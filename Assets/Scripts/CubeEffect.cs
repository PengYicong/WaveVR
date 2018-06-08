/*
 * Controls the effect of the individual note in general
 * Function:
 * 0) get the input of game mode selection (melody mode or free mode)
 * 1) manage the sound effect, motion effects, particle effect of the cube
 * Description:
 *  "m" for melody mode "f" for free mode
*/


using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CubeEffect : MonoBehaviour
{
    ParticleSystem particles;
    AudioSource noteSound;
    NoteEffects script;
    Vector3 originPosition;
    Vector3 destiPosition;
    SphereCollider sCollider;
    bool melodyMode;
    float speed;

    // Use this for initialization
    void Start()
    {
        particles = GetComponent<ParticleSystem>();
        noteSound = GetComponent<AudioSource>();
        script = GetComponentInParent<NoteEffects>();
        originPosition = transform.position;
        destiPosition = originPosition + new Vector3(0, 0.25f, 0);
        sCollider = GetComponent<SphereCollider>();
        melodyMode = false;
        speed = 1;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown("m"))
        {
            melodyMode = true;
        }
        if (Input.GetKeyDown("f"))
        {
            melodyMode = false;
        }
        if (melodyMode)
        {
            if (script.MelodyInfo() == gameObject.name)
            {
                transform.position = Vector3.MoveTowards(transform.position, destiPosition, speed * Time.deltaTime);
                transform.localScale = new Vector3(0.3f, 0.3f, 0.3f);
                sCollider.radius = 0.9f;
            }
            else
            {
                transform.position = Vector3.MoveTowards(transform.position, originPosition, speed * Time.deltaTime);
                transform.localScale = new Vector3(0.2f, 0.2f, 0.2f);
                sCollider.radius = 0.8f;
            }
        }
        else
        {
            transform.position = Vector3.MoveTowards(transform.position, originPosition, speed * Time.deltaTime);
            //transform.position = originPosition - new Vector3(0, 0.5f, 0);
            transform.localScale = new Vector3(0.2f, 0.2f, 0.2f);
            sCollider.radius = 0.8f;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {

            if (melodyMode)
            {
                if (script.MelodyInfo() == gameObject.name)
                {
                    particles.Emit(100);
                    noteSound.Play();
                    script.NextNote();
                }
            }
            else
            {
                particles.Emit(100);
                noteSound.Play();
            }
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            //particles.Stop();
        }
    }
}
