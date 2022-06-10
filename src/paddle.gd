extends Area2D

const BASE_SPEED: int = 200
var   _ball_dir : int = 0

onready var _screen_size_y = get_viewport_rect().size.y

func _ready():
    if name == "Red":
        _ball_dir = -1
    else:
        _ball_dir = 1

func _process(delta):
    var input = Input.get_action_strength(name + "_down") - Input.get_action_strength(name + "_up")
    position.y = clamp(position.y + input * BASE_SPEED * delta, 16, _screen_size_y)
    pass


func _on_Area2D_area_entered(area:Area2D) -> void:
    if area.name == "Ball":
        area._direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
    pass
