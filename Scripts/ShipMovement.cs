using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShipMovement : MonoBehaviour
{




    public Rigidbody2D bullet;
    private float bulletSpeed;
    public GameObject bulletPrefab;

    private Transform player;

    public float moveSpeed;
    // Start is called before the first frame update
    void Start()
    {
        player = GetComponent<Transform>();
        moveSpeed = 6;

    }



    // Update is called once per frame
    void Update()
    {


        if(Input.GetKey(KeyCode.D))
        {
            if (player.position.x < 5.8f)
            {
                Vector3 translation = (Vector3.right * moveSpeed * Time.deltaTime);
                player.Translate(translation);
            }
                
        }

        if(Input.GetKey(KeyCode.A))
        {
            if (player.position.x > -5.8f)
            {
                Vector3 translation = (Vector3.left * moveSpeed * Time.deltaTime);
                player.Translate(translation);
            }
        }


        if(Input.GetKeyDown(KeyCode.Space))
        {
            if(GameObject.FindGameObjectsWithTag("Bullet").Length < 3)
            {
                GameObject b = Instantiate(bulletPrefab, transform.position, Quaternion.identity);
                b.GetComponent<Rigidbody2D>().AddForce(transform.up * 1000);
            }


        }



    }


}
