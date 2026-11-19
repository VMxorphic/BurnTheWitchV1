extends StaticBody2D


func _on_button_pressed() -> void:
	spawn_carrot()


func spawn_carrot()-> void:
	const carrot =preload("res://Scenes/Foods/carrot_ingredient.tscn")
	var instance= carrot.instantiate()
	add_child(instance)
