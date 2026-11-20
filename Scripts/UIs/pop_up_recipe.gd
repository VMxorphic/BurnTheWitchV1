extends Control
@onready var label: Label = $Label
@onready var continue_button: Button = $ContinueButton
@onready var recipe: TextureRect = $Recipe

var recipes:={
#Milkshakes(6)
	"Apple Milkshake": preload("res://Assets/Foods/AppleMilkshake.png"),
	"Blueberry Milkshake": preload("res://Assets/Foods/BlueberryMilkshake.png"),
	"Strawberry Milkshake": preload("res://Assets/Foods/StrawberryMilkshake.png"),
	"Bloodshot Eye Milkshake": preload("res://Assets/Foods/BloodshotEyeMilkshake.png"),
	"Crystal Milkshake": preload("res://Assets/Foods/CrystalMilkshake.png"),
	"Fish Milkshake": preload("res://Assets/Foods/FishMilkshake.png"),
	"Biscuit Milkshake": preload("res://Assets/Foods/DogTreatMilkshake.png"),
	"Basic Milkshake": preload("res://Assets/Foods/BasicMilkshake.png"),
	
	
#Cakes(9)
	"Blueberry Cake": preload("res://Assets/Foods/BlueberryCake.png"),
	"Strawberry Cake": preload("res://Assets/Foods/StrawberryCake.png"),
	"Apple Cake": preload("res://Assets/Foods/AppleCake.png"),
	"Bloody Cake": preload("res://Assets/Foods/BloodCake.png"),
	"Fish Cake": preload("res://Assets/Foods/FishCake.png"),
	"Biscuit Cake": preload("res://Assets/Foods/BiscuitCake.png"),
	"Crystal Cake": preload("res://Assets/Foods/CrystalCake.png"),
	"Basic Cake": preload("res://Assets/Foods/BasicCake.png"),
	"Carrot Cake": preload("res://Assets/Foods/CarrotCake.png"),
	
#Others
	"Mess": preload("res://Assets/Cookware/Box.png")
}



func _ready() -> void:
	hide() 
	
func display_recipe(food_name: String) -> void:
	label.text = food_name
	if recipes.has(food_name):
		recipe.texture = recipes[food_name]
		
		
		EventBus.food_unlocked.emit(food_name)
		if not EventBus.unlocked_recipes.has(food_name):
			EventBus.unlocked_recipes.append(food_name)
		print("food name : ", food_name)
	show()

func display_recipe_no_recipe(food_name: String) -> void:
	label.text = food_name
	show()

func _on_continue_button_pressed() -> void:
	hide()
