using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider2D))]
public class GroundCheck : MonoBehaviour
{
    private Collider2D _collider;

    private void Awake()
    {
        _collider = GetComponent<Collider2D>();
    }

    public bool GroundedCheck()
    {
        Vector2 transform2D = new Vector2(transform.position.x, transform.position.y);
        Vector2 extents2D = new Vector2(_collider.bounds.extents.x, _collider.bounds.extents.y);
        /*
        Collider2D[] collisions = Physics2D.OverlapBox(transform2D, extents2D, 0f);//BUGFIX
        Debug.Log(collisions.Length);
        
        foreach (Collider collider in collisions){
            Debug.Log(collider.gameObject.name + ": " + collider.gameObject.tag);
            if (collider.gameObject.CompareTag("Terrain"))
            {
                return true;
            }
        }
        */
        return false;
    }
}
