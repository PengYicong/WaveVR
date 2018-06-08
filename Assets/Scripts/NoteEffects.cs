/*
 * Controls the behavior of the note group
 * Function:
 * 0) Stores the scripts of the song
 * 1) Manage the play of the scripts
 * 2) Get the input of song script selection
 * 3) Controls the rotation effect when the circle layout selected
 * Description:
 *  number "1" and "2" for song script selection
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NoteEffects : MonoBehaviour
{

    private string[] script1 = new string[14] { "Do", "Do", "So", "So", "La", "La", "So", "Fa", "Fa", "Mi", "Mi", "Re", "Re", "Do" };
    private string[] script2 = new string[14] { "Mi", "Fa", "So", "So", "Fa", "Mi", "So", "Fa", "Mi", "Fa", "So", "Fa", "Mi", "Do" };
    int scriptNumber;
    private int index;
    private string[] currentScript;
    private bool layoutState;
    // Use this for initialization
    void Start()
    {
        index = 0;
        scriptNumber = 0;
        currentScript = script1;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown("c"))
        {
            layoutState = true;
        }
        if (Input.GetKeyDown("l"))
        {
            layoutState = false;
        }
        if (Input.GetKeyDown("1"))
        {
            currentScript = script1;
            index = 0;
        }
        if (Input.GetKeyDown("2"))
        {
            currentScript = script2;
            index = 0;
        }
        if (layoutState)
        {
            transform.Rotate(new Vector3(0, 3, 0) * Time.deltaTime);
        }

    }

    public int MelodyPos()
    {
        return index;
    }

    public string MelodyInfo()
    {
        return currentScript[index];
    }

    public void NextNote()
    {
        if (index < currentScript.Length - 1)
        {
            index++;
        }
        else
        {
            index = 0;
        }
    }

}
