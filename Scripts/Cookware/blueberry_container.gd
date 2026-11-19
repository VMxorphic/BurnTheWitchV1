extends StaticBody2D

#blueberry container

func _on_button_pressed() -> void:
	spawn_blueberry()

func spawn_blueberry()-> void:
	const blueberry =preload("res://Scenes/Foods/bluebery_ingredient.tscn")
	var instance= blueberry.instantiate()
	add_child(instance)
