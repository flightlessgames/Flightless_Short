using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody2D))]
public class PlayerMotor_2D: MonoBehaviour
{
    Player_Action controls = null;
    Rigidbody2D rb2d = null;

    [Header("Required")]
    [SerializeField] private GroundCheck _groundCheck = null;

    private enum Direction
    {
        Left = -1,
        None = 0,
        Right = 1
    };

    [Header("Settings")]
    [SerializeField] private float _moveSpeed = 10f;

    private Vector2 _movementInput = Vector2.zero;
    private Direction _direction = Direction.None;


    private void Awake()
    {
        controls = new Player_Action();
        controls.Player_Movement.Move.performed += ctx => _movementInput = ctx.ReadValue<Vector2>();
        rb2d = GetComponent<Rigidbody2D>();
    }

    private void OnEnable()
    {
        controls.Enable();
    }

    private void FixedUpdate()
    {
        _direction = (Direction)_movementInput.x;
        Debug.Log(_movementInput + ": Moving " + _direction);
        MovePlayer();
        JumpPlayer();
    }

    private void MovePlayer()
    {
        rb2d.velocity = new Vector2(_movementInput.x * _moveSpeed, rb2d.velocity.y);
    }

    private void JumpPlayer()
    {
        if(_movementInput.y > 0)
        {
            Debug.Log("Jump Check");
            //Layered if statements to reduce Grounded Collision polling (using Physics.OverlapBox; expensive)
            bool isGrounded = _groundCheck.GroundedCheck();
            if (isGrounded)
            {
                Debug.Log("Jump Success");
            }
            //AFTER BUGFIX IN GROUNDCHECK, MOVE INTO IF STATEMENT
            rb2d.velocity = new Vector2(rb2d.velocity.x, _moveSpeed);
        }
    }
}
