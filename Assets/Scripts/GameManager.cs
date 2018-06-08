using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    GameObject circleNotes;
    GameObject linearNotes;
    AudioSource backgroundMusic;
    void Awake()
    {
        circleNotes = GameObject.FindGameObjectWithTag("Circle");
        linearNotes = GameObject.FindGameObjectWithTag("Linear");
        backgroundMusic = GetComponent<AudioSource>();
    }

    // Use this for initialization
    void Start()
    {
        circleNotes.SetActive(true);
        linearNotes.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown("l"))
        {
            circleNotes.SetActive(false);
            linearNotes.SetActive(true);
        }
        if (Input.GetKeyDown("c"))
        {
            circleNotes.SetActive(true);
            linearNotes.SetActive(false);
        }
        if (Input.GetKeyDown("u"))
        {
            circleNotes.SetActive(false);
            linearNotes.SetActive(false);
            backgroundMusic.Stop();
        }
    }
}
