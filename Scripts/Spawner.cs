using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour
{
    private Vector2 spawnLoc;
    public GameObject alien;
    private float timeSpawn;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(GameObject.FindGameObjectsWithTag("Alien").Length < 5)
        {
            timeSpawn += Time.deltaTime;
            Vector2 spawnLoc = new Vector2(Random.Range(-6.0f, 6.0f), 7);
     
            if(timeSpawn > 0.5)
            {
                Instantiate(alien, spawnLoc, Quaternion.identity);
                timeSpawn = 0;
            }
        }
    }
}
