using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PositionUpdater : MonoBehaviour
{
    Transform headTransform;
    // Use this for initialization
    void Start()
    {
        headTransform = this.gameObject.transform.GetChild(2);
    }

    // Update is called once per frame
    void Update()
    {
        headTransform = this.gameObject.transform.GetChild(2);
    }

    public Transform HeadTransform()
    {
        return headTransform;
    }
}
