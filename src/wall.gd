extends Area2D

var index: int = -1
signal score

func _on_Area2D_area_entered(area: Area2D) -> void:
    if area.name == "Ball":
        emit_signal('score')
        area.reset()
    pass
