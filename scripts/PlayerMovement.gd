extends CharacterBody2D

const UP_DIRECTION = Vector2.UP

@export var speed = 600.0
@export var jump_strenght = 1500.0
@export var maximum_jumps = 2
@export var doublejump_strenght = 1200.0
@export var gravity = 4500.0

var _jumps_made = 0
var _velocity = Vector2.ZERO

func _physics_process(delta):
	var _horizontal_direction = (
		Input.get_action_strength("move_right")
		- Input.get_action_strength("move_left")
	)
	
	_velocity.x = _horizontal_direction * speed
	_velocity.y = gravity * delta
	
	_velocity = move_and_slide()
