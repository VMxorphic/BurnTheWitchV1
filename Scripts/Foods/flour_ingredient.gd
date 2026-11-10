extends StaticBody2D




func _on_button_pressed() -> void:
	spawn_flourSpoon()

func spawn_flourSpoon()-> void:
	const flour_spoon=preload("res://Scenes/Foods/flour_spoon.tscn")
	var instance= flour_spoon.instantiate()
	add_child(instance)
