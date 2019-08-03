using UnityEngine;

[RequireComponent(typeof(Controller2D))]
public class StrongerPlayer : Player
{
    void Update()
    {
        base.Update();
        
        if (controller.collisions.hInfo != null)
        {
            PushableStone push = controller.collisions.hInfo.GetComponent<PushableStone>();
            if (push !=  null)
            {
                push.Move(velocity * Time.deltaTime, directionalInput);
            }
        }
        
    }
}
