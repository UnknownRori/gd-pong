extends Area2D

var _ball_dir = 0

func _ready():
    if name == "Left":
        _ball_dir = -1
    else:
        _ball_dir = 1

func _process(delta):
    pass


func _on_Area2D_area_entered(area:Area2D) -> void:
    if area.name == "Ball":
        area._direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
    pass
