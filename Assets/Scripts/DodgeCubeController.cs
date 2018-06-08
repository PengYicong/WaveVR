/*
 * Controls the dodge cube behavior
 * Function:
 * 0) manage the sound effect of the cube
 * 1) manage the movement of the cube
 * 3) get the input of speed selection
 * Description:
 *  "0" to "2" for slow to fast speed selection
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DodgeCubeController : MonoBehaviour
{
    AudioSource cubeSound;
    Vector3 movement;
    Vector3 speed0 = new Vector3(0f, 0f, -1f);
    Vector3 speed1 = new Vector3(0f, 0f, -2.5f);
    Vector3 speed2 = new Vector3(0f, 0f, -4f);
    GameObject track;
    TrackController script;
    // Use this for initialization
    void Start()
    {
        cubeSound = GetComponent<AudioSource>();
        track = GameObject.FindGameObjectWithTag("Track");
        script = track.GetComponent<TrackController>();
        movement = new Vector3(0f, 0f, -2.5f);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown("0"))
        {
            movement = speed0;
        }
        if (Input.GetKeyDown("1"))
        {
            movement = speed1;
        }
        if (Input.GetKeyDown("2"))
        {
            movement = speed2;
        }
        transform.position = transform.position + movement * Time.deltaTime;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Head"))
        {
            cubeSound.Play();
            Debug.Log("Collided with player");
            script.loseScore();
        }
    }

}
