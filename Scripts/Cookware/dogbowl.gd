extends StaticBody2D

#dogbowl to spawn biscuit treats

func _on_button_pressed() -> void:
	spawn_biscuit()


func spawn_biscuit()-> void:
	const biscuit =preload("res://Scenes/Foods/dog_treat_ingredient.tscn")
	var instance= biscuit.instantiate()
	add_child(instance)
