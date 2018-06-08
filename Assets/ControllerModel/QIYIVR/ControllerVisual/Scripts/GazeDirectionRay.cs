using UnityEngine;

namespace Qiyi
{
	/// <summary>
	/// 定义和发出视线方向的射线的脚本
	/// </summary>
	sealed class GazeDirectionRay : MonoBehaviour
	{
		[SerializeField] private float _maxDistance = 1000f;
        [SerializeField] private Transform _head;

		private LayerMask _layerMask = 1 << 20;

		private IGazeInteractive _currentInteractive, _previousInteractive;

        void Start ()
        {
            var sdk = GameObject.Find ("WaveVR");
            if(sdk != null)
                _head = sdk.transform.Find ("head");
        }

		void Update ()
		{
            if (_head == null)
                return;
                
            Ray ray = new Ray (_head.position, _head.forward);
			RaycastHit hit;
			if (Physics.Raycast (ray, out hit, _maxDistance, _layerMask)) {
				_currentInteractive = hit.collider.GetComponent<IGazeInteractive> ();
				if (_currentInteractive == null) {
					return;
				}

				if (_currentInteractive != _previousInteractive) {
					if (_previousInteractive != null) {
						_previousInteractive.OnExit ();
					}
					_currentInteractive.OnEnter (hit.point);
					_previousInteractive = _currentInteractive;
				} else {
					_currentInteractive.OnStay (hit.point);
				}

			} else {
				if (_currentInteractive != null) {
					_currentInteractive.OnExit ();
				}
				_currentInteractive = null;
				_previousInteractive = null;
			}
		}
	}
}
