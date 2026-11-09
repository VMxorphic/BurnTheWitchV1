extends StaticBody2D

# Items in Fridge


# const egg_fridge=perload(")

func _on_button_pressed() -> void:
	spawn_egg()
	
	


func _on_button_2_pressed() -> void:
	spawn_fish()


func _on_button_3_pressed() -> void:
	spawn_eye()

func _on_button_4_pressed() -> void:
	spawn_milk()
	
	
func spawn_fish()-> void:
	const fish_fridge= preload("res://Scenes/Foods/fish_ingredient.tscn")
	var instance= fish_fridge.instantiate()
	add_child(instance)
	print("fish has been spaned")
	
	
	
func spawn_milk()->void:
	const milk_fridge= preload("res://Scenes/Foods/milk_ingredient.tscn")
	var instance= milk_fridge.instantiate()
	add_child(instance)
	
	
func spawn_eye()-> void:
	const eye_fridge=preload("res://Scenes/Foods/eye_ingredient.tscn")
	var instance= eye_fridge.instantiate()
	add_child(instance)
	
func spawn_egg()-> void:
	const egg_fridge=preload("res://Scenes/Foods/egg_ingredient.tscn")
	var instance= egg_fridge.instantiate()
	add_child(instance)
