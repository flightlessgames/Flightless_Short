using System.Collections;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerMotor_2D: MonoBehaviour
{
    Player_Action controls;

    private enum Direction
    {
        Left = -1,
        None = 0,
        Right = 1
    };

    int _movementInput;
    private Direction _direction = Direction.None;

    private void Awake()
    {
        controls = new Player_Action();
        controls.Player_Movement.Move.performed += ctx => _movementInput = ctx.ReadValue<int>();

    }

    private void OnEnable()
    {
        controls.Enable();
    }

    private void FixedUpdate()
    {
        _direction = (Direction)_movementInput;
        Debug.Log(_movementInput + ": Moving " + _direction);
    }
}
