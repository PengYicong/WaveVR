using UnityEngine;

namespace Qiyi
{
	/// <summary>
	/// 定义和视线交互的物体，需要设置成单独的<see cref="QiyiSdkConfig.GAZE_STANDALONE_RAYCAST_LAYERMASK">layer</see>
	/// </summary>
	interface IGazeInteractive
	{
		/// <summary>
		/// 当视线进入该物体时调用
		/// </summary>
		void OnEnter (Vector3 impactPoint);

		/// <summary>
		/// 视线离开
		/// </summary>
		void OnExit ();

		/// <summary>
		/// 视线停留
		/// </summary>
		void OnStay (Vector3 impactPoint);
	}
}
