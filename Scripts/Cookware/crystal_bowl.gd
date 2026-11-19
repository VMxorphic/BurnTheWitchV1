extends StaticBody2D

#crystal bowl


func _on_button_pressed() -> void:
	spawn_crystal()


func spawn_crystal()-> void:
	const crystal =preload("res://Scenes/Foods/crystal_ingredient.tscn")
	var instance= crystal.instantiate()
	add_child(instance)
