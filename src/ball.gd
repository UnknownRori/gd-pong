extends Area2D

onready var _initial_pos = position

const BALL_SPEED  = 200
var   _speed      = BALL_SPEED
var   _direction  = Vector2.LEFT

func _process(delta: float) -> void:
    _speed += delta * 2
    position += BALL_SPEED * delta * _direction
    pass

func reset():
    _direction = Vector2.LEFT
    position = _initial_pos
    _speed = BALL_SPEED
