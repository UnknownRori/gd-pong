extends Area2D

var _ball_dir = 0

func _ready() -> void:
    if name == "Top":
        _ball_dir = 1
    else:
        _ball_dir = -1
    pass


func _on_Area2D_area_entered(area: Area2D) -> void:
    if area.name == "Ball":
        area._direction.y = _ball_dir
    pass
