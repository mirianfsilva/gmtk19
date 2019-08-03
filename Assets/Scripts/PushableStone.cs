using UnityEngine;

[RequireComponent(typeof(Controller2D))]
public class PushableStone : MonoBehaviour
{
    private Controller2D _controller;

    public  void Start()
    {
        _controller = GetComponent<Controller2D>();
    }

    public void Update()
    {
        
    }

    public void Move(Vector3 velocity, Vector2 directionalInput)
    {
        velocity.y = 0f;
        _controller.Move(velocity, directionalInput);
    }
}
