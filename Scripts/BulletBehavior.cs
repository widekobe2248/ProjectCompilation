using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletBehavior : MonoBehaviour
{


    // Start is called before the first frame update
    void Start()
    {
        var bulletBody = GetComponent("Rigidbody2D");
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void OnBecameInvisible()
    {
        Destroy(gameObject);
    }



    private void OnCollisionEnter2D(Collision2D collider)
    {
        if (collider.gameObject.tag == "Alien")
        {
            Destroy(collider.gameObject);
            Destroy(this.gameObject);
        }
    }

}
