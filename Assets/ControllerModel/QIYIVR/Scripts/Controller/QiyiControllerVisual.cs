using UnityEngine;
using System.Collections;
using wvr;

/// Provides visual feedback for iqiyi controller.
[RequireComponent (typeof(Renderer))]
class QiyiControllerVisual : MonoBehaviour
{
	/// Units are in meters.
	private static readonly Vector3 TOUCHPAD_POINT_DIMENSIONS = new Vector3 (0.01f, 0.001f, 0.01f);
	private const float TOUCHPAD_RADIUS = 0.012f;
	private const float TOUCHPAD_POINT_Y_OFFSET = 0.045f;
	private const float TOUCHPAD_POINT_ELEVATION = 0.018f;
	private const float TOUCHPAD_POINT_SCALE_DURATION_SECONDS = 0.1f;

	private const float SHADER_ENABLE_VALUE = 1;
	private const float SHADER_DISABLE_VALUE = 0;

	private Renderer controllerRenderer;
	private float elapsedScaleTimeSeconds;
	private bool wasTouching;
    private int _baterryLevel = -1;
	private IEnumerator _updateBaterry;
	private bool _initializedBatteryLevel = false;
    public WVR_DeviceType device = WVR_DeviceType.WVR_DeviceType_Controller_Right;

	[SerializeField] private GameObject touchPoint;
	[SerializeField] private Canvas tipCanvas;
	[SerializeField] private Renderer _baterryPercentage;
	[SerializeField] private GameObject _baterryLow;

	void Awake ()
	{
		controllerRenderer = GetComponent<Renderer> ();
		tipCanvas.sortingOrder = controllerRenderer.sortingOrder = 3000;
		for (int i = 0; i < transform.parent.childCount - 1; i++) {
			transform.parent.GetChild (i).GetComponent<Renderer> ().sortingOrder = 3000;	
		}
	}

	void Update ()
    {
        touchPoint.SetActive (false);
        if (WaveVR_Controller.Input(device).GetPress(WVR_InputId.WVR_InputId_Alias1_Trigger)) {
            controllerRenderer.sharedMaterial.SetFloat ("_06_banji", SHADER_ENABLE_VALUE);
            controllerRenderer.sharedMaterial.SetFloat ("_07_touchpad", SHADER_DISABLE_VALUE);
        } else if(WaveVR_Controller.Input(device).GetPress(WVR_InputId.WVR_InputId_Alias1_Touchpad)){
            controllerRenderer.sharedMaterial.SetFloat ("_07_touchpad", SHADER_ENABLE_VALUE);
            controllerRenderer.sharedMaterial.SetFloat ("_06_banji", SHADER_DISABLE_VALUE);
        } else {
            controllerRenderer.sharedMaterial.SetFloat ("_07_touchpad", SHADER_DISABLE_VALUE);
			controllerRenderer.sharedMaterial.SetFloat ("_06_banji", SHADER_DISABLE_VALUE);

            if (WaveVR_Controller.Input(device).GetPress(WVR_InputId.WVR_InputId_Alias1_Menu)) {
				controllerRenderer.sharedMaterial.SetFloat ("_01_back", SHADER_ENABLE_VALUE);
            } else if (WaveVR_Controller.Input(device).GetPress(WVR_InputId.WVR_InputId_Alias1_System)) {
				controllerRenderer.sharedMaterial.SetFloat ("_02_home", SHADER_ENABLE_VALUE);
			} else {
				controllerRenderer.sharedMaterial.SetFloat ("_01_back", SHADER_DISABLE_VALUE);
				controllerRenderer.sharedMaterial.SetFloat ("_02_home", SHADER_DISABLE_VALUE);
			}

			// Draw the touch point and animate the scale change.
            if (WaveVR_Controller.Input(device).GetTouch(WVR_InputId.WVR_InputId_Alias1_Touchpad)) {
                touchPoint.SetActive (true);
				if (!wasTouching) {
					wasTouching = true;
					elapsedScaleTimeSeconds = 0.0f;
				}
                var axis = WaveVR_Controller.Input (device).GetAxis (WVR_InputId.WVR_InputId_Alias1_Touchpad);

                float x = axis.x * TOUCHPAD_RADIUS;
                float y = -axis.y * TOUCHPAD_RADIUS;
				Vector3 scale = Vector3.Lerp (Vector3.zero,
					                TOUCHPAD_POINT_DIMENSIONS,
					                elapsedScaleTimeSeconds / TOUCHPAD_POINT_SCALE_DURATION_SECONDS);
				touchPoint.transform.localScale = scale;
				touchPoint.transform.localPosition = new Vector3 (-x, TOUCHPAD_POINT_Y_OFFSET - y, TOUCHPAD_POINT_ELEVATION);
			} else {
				if (wasTouching) {
					wasTouching = false;
					elapsedScaleTimeSeconds = 0.0f;
				}
				Vector3 scale = Vector3.Lerp (TOUCHPAD_POINT_DIMENSIONS,
					                Vector3.zero,
					                elapsedScaleTimeSeconds / TOUCHPAD_POINT_SCALE_DURATION_SECONDS);
				touchPoint.transform.localScale = scale;
			}
			elapsedScaleTimeSeconds += Time.deltaTime;
		}

        WVR_DeviceType _type = WaveVR_Controller.Input(this.device).DeviceType;
        _baterryLevel = (int)(Interop.WVR_GetDeviceBatteryPercentage(_type) * 100f);

		if (_baterryLevel >= 0 && !_initializedBatteryLevel) {
			UpdateBaterryLevel ();
			_initializedBatteryLevel = true;
		}

        if (!WaveVR_Controller.Input (device).connected) {
			_initializedBatteryLevel = false;
			_baterryLevel = -1;
		}
	}

	void Start ()
	{
		StartCoroutine (_updateBaterry = UpdateBatteryCoroutine ());
	}

	void OnDestroy ()
	{
		if (_updateBaterry != null)
			StopCoroutine (_updateBaterry);
	}

	void OnApplicationPause (bool paused)
	{
		if (_updateBaterry == null) {
			_updateBaterry = UpdateBatteryCoroutine ();
		}
		if (paused) {
			StopCoroutine (_updateBaterry);
		} else {
			StartCoroutine (_updateBaterry);
		}
	}

	private IEnumerator UpdateBatteryCoroutine ()
	{
		while (true) {
			yield return new WaitForSeconds (10);
			UpdateBaterryLevel ();
		}
	}

	private void UpdateBaterryLevel ()
	{
        _baterryPercentage.sharedMaterial.SetInt ("_Rotation", _baterryLevel);

		if (_baterryLevel < 0) {
			return;
		}
		_baterryLow.SetActive (_baterryLevel < 20);
	}
		
}

