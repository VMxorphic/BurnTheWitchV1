extends Control


@onready var recipes := {
	
	"Blueberry Milkshake": {"button": $ScrollContainer/MarginContainer/Recipe/MilkShakeBlueberry, "label": $ScrollContainer/MarginContainer/Recipe/MilkShakeBlueberryLabel},
	"Apple Milkshake": {"button": $ScrollContainer/MarginContainer/Recipe/MilkShakeApple, "label": $ScrollContainer/MarginContainer/Recipe/MilkShakeAppleLabel},
	"Strawberry Milkshake":{"button": $ScrollContainer/MarginContainer/Recipe/MilkShakeStrawberry,"label": $ScrollContainer/MarginContainer/Recipe/MilkShakeStrawberryLabel},
	"Bloodshot Eye Milkshake":{"button": $ScrollContainer/MarginContainer/Recipe/MilkShakeBloodshoteye,"label": $ScrollContainer/MarginContainer/Recipe/MilkShakeBloodshoteyeLabel},
	"Fish Milkshake":{"button": $ScrollContainer/MarginContainer/Recipe/MilkShakeFish,"label": $ScrollContainer/MarginContainer/Recipe/MilkShakeFishLabel},
	"Biscuit Milkshake":{"button": $ScrollContainer/MarginContainer/Recipe/MilkShakeBisicuitFrappe,"label": $ScrollContainer/MarginContainer/Recipe/MilkShakeBicuitFrappeLabel},
	"Crystal Milkshake":{"button": $ScrollContainer/MarginContainer/Recipe/MilkShakeCrystal,"label": $ScrollContainer/MarginContainer/Recipe/MilkShakeCrystalLabel},
	"Basic Milkshake":{"button": $ScrollContainer/MarginContainer/Recipe/MilkShakeBasic,"label": $ScrollContainer/MarginContainer/Recipe/MilkshakeBasicLabel},
	
	
	"Blueberry Cake":{"button": $ScrollContainer/MarginContainer/Recipe/BlueberryCake,"label": $ScrollContainer/MarginContainer/Recipe/BlueberryCakeLabel},
	"Strawberry Cake":{"button": $ScrollContainer/MarginContainer/Recipe/StrawberryCake,"label": $ScrollContainer/MarginContainer/Recipe/StrawberryCakeLabel},
	"Apple Cake":{"button": $ScrollContainer/MarginContainer/Recipe/AppleCake,"label": $ScrollContainer/MarginContainer/Recipe/AppleCakeLabel},
	"Bloody Cake":{"button": $ScrollContainer/MarginContainer/Recipe/BloodyCake,"label": $ScrollContainer/MarginContainer/Recipe/BloodyCakeLabel},
	"Fish Cake":{"button": $ScrollContainer/MarginContainer/Recipe/FishCake,"label": $ScrollContainer/MarginContainer/Recipe/FishCakeLabel},
	"Biscuit Cake":{"button": $ScrollContainer/MarginContainer/Recipe/BiscuitCake,"label": $ScrollContainer/MarginContainer/Recipe/BiscuitCakeLabel},
	"Crystal Cake":{"button": $ScrollContainer/MarginContainer/Recipe/CrystalCake,"label": $ScrollContainer/MarginContainer/Recipe/CrystalCakeLabel},
	"Basic Cake":{"button": $ScrollContainer/MarginContainer/Recipe/BasicCake,"label": $ScrollContainer/MarginContainer/Recipe/BasicCakeLabel},
	"Carrot Cake":{"button": $ScrollContainer/MarginContainer/Recipe/CarrotCake,"label": $ScrollContainer/MarginContainer/Recipe/CarrotCakeLabel},
}

var images_unlocked:={
	"Blueberry Milkshake":preload("res://Assets/Foods/BlueberryMilkshake.png"),
	"Apple Milkshake":preload("res://Assets/Foods/AppleMilkshake.png"),
	"Strawberry Milkshake":preload("res://Assets/Foods/StrawberryMilkshake.png"),
	"Bloodshot Eye Milkshake":preload("res://Assets/Foods/BloodshotEyeMilkshake.png"),
	"Fish Milkshake":preload("res://Assets/Foods/FishMilkshake.png"),
	"Crystal Milkshake":preload("res://Assets/Foods/CrystalMilkshake.png"),
	"Biscuit Milkshake":preload("res://Assets/Foods/DogTreatMilkshake.png"),
	"Basic Milkshake":preload("res://Assets/Foods/BasicMilkshake.png"),
	
	
	"Blueberry Cake": preload("res://Assets/Foods/BlueberryCake.png"),
	"Strawberry Cake": preload("res://Assets/Foods/StrawberryCake.png"),
	"Apple Cake": preload("res://Assets/Foods/AppleCake.png"),
	"Bloody Cake": preload("res://Assets/Foods/BloodCake.png"),
	"Fish Cake": preload("res://Assets/Foods/FishCake.png"),
	"Biscuit Cake": preload("res://Assets/Foods/BiscuitCake.png"),
	"Crystal Cake": preload("res://Assets/Foods/CrystalCake.png"),
	"Basic Cake": preload("res://Assets/Foods/BasicCake.png"),
	"Carrot Cake": preload("res://Assets/Foods/CarrotCake.png")
	
} 



func _ready() -> void:
	EventBus.food_unlocked.connect(_on_food_unlocked)
	for recipe_name in EventBus.unlocked_recipes:
		_on_food_unlocked(recipe_name)
	print(EventBus.unlocked_recipes)

func _on_food_unlocked(food_found:String) -> void:
	if recipes.has(food_found) and images_unlocked.has(food_found):
		recipes[food_found]["button"].texture_normal = images_unlocked[food_found]
		recipes[food_found]["label"].text = food_found

func _on_texture_button_pressed() -> void:
		SceneTransition._transition_to_scene(SceneManager.kitchen)
		print("back to game")
