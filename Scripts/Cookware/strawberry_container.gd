extends StaticBody2D

#strawberry container

func _on_button_pressed() -> void:
	spawn_strawberry()


func spawn_strawberry()-> void:
	const strawberry =preload("res://Scenes/Foods/strawberry_ingredient.tscn")
	var instance= strawberry.instantiate()
	add_child(instance)
