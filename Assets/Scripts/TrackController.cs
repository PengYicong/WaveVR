/*
 * Controls the track behavior include the cube instantiation
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class TrackController : MonoBehaviour
{
    int score;
    int totalNumber;
    int currentPoints;
    int maxTimes;
    int cubeNumber;
    int index;

    string[] sequence = new string[5] { "Middle", "Left", "Right", "Middle", "Right" };

    Vector3 middle = new Vector3(0, 1, 7);
    Vector3 left = new Vector3(1, 1, 7);
    Vector3 right = new Vector3(-1, 1, 7);
    Transform dodgeTransform;

    Vector3 spawnPosition;

    GameObject player;
    GameObject cube;
    Transform head;
    PositionUpdater script;

    public GameObject dodgeCube;

    // Use this for initialization
    void Start()
    {
        player = GameObject.Find("Player");
        script = player.GetComponent<PositionUpdater>();
        head = script.HeadTransform();
        if (player != null)
        {
            Debug.Log("Player Found");
        }
        else
        {
            Debug.Log("Player not found");
        }
        maxTimes = 5;
        cubeNumber = 0;
        score = maxTimes;
        totalNumber = 0;
        currentPoints = 0;
        //FindSpawnPosition();
    }

    // Update is called once per frame
    void Update()
    {
        if (player != null)
        {
            Debug.Log("Player Found");
        }
        head = script.HeadTransform();
        spawnPosition = FindSpawnPosition();
        Debug.Log(cubeNumber);
        Debug.Log("Head Position" + head.position);
        //Debug.Log("Player pos" + player.transform.position);
        if (cubeNumber == 0 && totalNumber <= maxTimes)
        {
            Debug.Log("Spawned at" + spawnPosition);
            cube = Instantiate(dodgeCube,spawnPosition,new Quaternion(0,0,0,0));
            //Instantiate(dodgeCube, spawnPosition, new Quaternion(0, 0, 0, 0));
            cubeNumber++;
            Debug.Log("cube spawned");
        }
        else
        {
            Debug.Log("Score:" + score);
        }
    }

    Vector3 FindSpawnPosition()
    {
        if (Mathf.Abs(head.position.x) <= 0.5)
        {
            Debug.Log("Middle");
            return middle;
        }
        if (head.position.x < -0.5)
        {
            Debug.Log("Right");
            return right;
        }
        if (head.position.x > 0.5)
        {
            Debug.Log("Left");
            return left;
        }
        else
        {
            return new Vector3(0, 0, 0);
        }
    }

    Vector3 FindCubePosition()
    {
        if (sequence[index] == "Middle")
        {
            Debug.Log("Middle");
            return middle;
        }
        if (sequence[index] == "Right")
        {
            Debug.Log("Right");
            return right;
        }
        if (sequence[index] == "Left")
        {
            Debug.Log("Left");
            return left;
        }
        else
        {
            return new Vector3(0, 0, 0);
        }
    }

    string FindPlayerPosition()
    {
        if (Mathf.Abs(head.position.x) <= 0.5)
        {
            Debug.Log("Middle");
            return "Middle";
        }
        if (head.position.x < -0.5)
        {
            Debug.Log("Right");
            return "Right";
        }
        if (head.position.x > 0.5)
        {
            Debug.Log("Left");
            return "Left";
        }
        else
        {
            return "Other";
        }
    }



    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("DodgeCube"))
        {
            Destroy(other.gameObject);
            cubeNumber--;
            totalNumber++;
            Debug.Log("Collided");
        }
    }

    void CollideCheck()
    {
        if (Mathf.Abs(head.position.z-cube.transform.position.z) < Mathf.Epsilon)
        {
            if (FindPlayerPosition() == sequence[index])
            {

            }
        }
    }

    public void loseScore()
    {
        if (score > 0)
        {
            score--;
        }
    }

    public void NextCube()
    {
        if (index < sequence.Length - 1)
        {
            index++;
        }
        else
        {
            index = 0;
        }
    }

}
