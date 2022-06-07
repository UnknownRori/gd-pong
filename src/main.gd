extends Control


func _on_Left_score() -> void:
    var node = get_node('RedScore')
    node.text = str(int(node.text) + 1)


func _on_Right_score() -> void:
    var node = get_node('BlueScore')
    node.text = str(int(node.text) + 1)
