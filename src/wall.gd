extends Area2D

func _ready():
    pass

func _process(delta):
   pass


func _on_Area2D_area_entered(area: Area2D) -> void:
    if area.name == "Ball":
        area.reset()
    pass
