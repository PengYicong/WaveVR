using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JumpCubeController : MonoBehaviour
{
    AudioSource hitSound;
    Vector3 movement;

    // Use this for initialization
    void Start()
    {
        hitSound = GetComponent<AudioSource>();
        movement = new Vector3(0f, 0f, 2.5f);
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = transform.position + movement * Time.deltaTime;
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Wall"))
        {
            movement = -movement;
        }

        if(other.CompareTag("Player"))
        {
            hitSound.Play();
        }
    }

}
