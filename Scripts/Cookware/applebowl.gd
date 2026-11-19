extends StaticBody2D

#apple bowl

func _on_button_pressed() -> void:
	spawn_apple()

func spawn_apple()-> void:
	const apple =preload("res://Scenes/Foods/apple_ingredient.tscn")
	var instance= apple.instantiate()
	add_child(instance)
