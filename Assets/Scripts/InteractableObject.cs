using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Controller2D))]
public class InteractableObject : MonoBehaviour
{
    public float weight;

    protected bool _myIsActive;

    private Controller2D _myController;
    private Vector2 _myVelocity;

    // Start is called before the first frame update
    void Start()
    {
        _myController = GetComponent<Controller2D>();
    }

    // Update is called once per frame
    void Update()
    {
        if (_myIsActive)
        {
            if (_myController.collisions.above || _myController.collisions.below)
            {
                _myVelocity.y = 0f;
            }
            else
            {
                _myVelocity.y = weight * Time.deltaTime;
            }

            if (_myController.collisions.left || _myController.collisions.right)
            {
                _myVelocity.y = 0f;
            }

            _myController.Move(_myVelocity);
        }
    }

    public void Activate()
    {
        _myIsActive = true;
    }

    public void AddVelocity(Vector2 velocity)
    {
        _myVelocity = _myVelocity + velocity;
    }
}
