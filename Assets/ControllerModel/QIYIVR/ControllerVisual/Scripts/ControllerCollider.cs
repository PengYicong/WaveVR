using UnityEngine;
using System.Collections;

namespace Qiyi.ControllerVisual
{
	/// <summary>
	/// 遥控器显示的模型透明度等与视线交互的脚本。
	/// </summary>
	sealed class ControllerCollider : MonoBehaviour, IGazeInteractive
	{
#pragma warning disable CS0649
        [SerializeField] private CanvasGroup _tips;
		[SerializeField] private Renderer _controllerModel;
		[SerializeField] private Renderer _electricity;
#pragma warning restore CS0649

        private const float FADE_ALPHA = 0.4f;

		void Awake ()
		{
            gameObject.layer = 20;
		}

		#region IHeadRaycastInteractive implementation

		public void OnEnter (Vector3 impactPoint)
		{
			StopAllCoroutines ();
			StartCoroutine (FadeIn ());
		}

		public void OnExit ()
		{
			StopAllCoroutines ();
			StartCoroutine (FadeOut ());
		}

		public void OnStay (Vector3 impactPoint)
		{
		}

		#endregion

		private IEnumerator FadeIn ()
		{
			float lerp = 0;
			while (lerp < 1) {
				_controllerModel.sharedMaterial.SetFloat ("_all_qd", Mathf.Lerp (FADE_ALPHA, 1f, lerp));
				_electricity.sharedMaterial.SetFloat ("_alpha_all", Mathf.Lerp (FADE_ALPHA, 1f, lerp));
				_tips.alpha = Mathf.Lerp (0f, 1f, lerp);
				lerp += 0.02f;
				yield return null;
			}
			_controllerModel.sharedMaterial.SetFloat ("_all_qd", 1);
			_electricity.sharedMaterial.SetFloat ("_alpha_all", 1);
			_tips.alpha = 1;
		}

		private IEnumerator FadeOut ()
		{
			float lerp = 1;
			while (lerp > 0) {
				_controllerModel.sharedMaterial.SetFloat ("_all_qd", Mathf.Lerp (FADE_ALPHA, 1f, lerp));
				_electricity.sharedMaterial.SetFloat ("_alpha_all", Mathf.Lerp (FADE_ALPHA, 1f, lerp));
				_tips.alpha = Mathf.Lerp (0f, 1f, lerp);
				lerp -= 0.04f;
				yield return null;
			}
			_controllerModel.sharedMaterial.SetFloat ("_all_qd", FADE_ALPHA);
			_electricity.sharedMaterial.SetFloat ("_alpha_all", FADE_ALPHA);
			_tips.alpha = 0;
		}
	}
}
