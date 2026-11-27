extends Node

var is_dragging=false


#Settings button states
var full_screen_control_pressed = false
var audio_control_slider = 1
var sfx_control_slider = 1


#List of all completed recipes
const completed_recipes: Array=[
	"Blueberry Milkshake","Strawberry Milkshake", "Apple Milkshake","Bloodshot eye Milkshake","Fish Milkshake","Basic Milkshake","Crystal Milkshake","Biscuit Milkshake"
	,"Blueberry Cake","Strawberry Cake","Apple Cake","Fish Cake","Carrot Cake","Bloody Cake","Biscuit Cake","Crystal Cake","Basic Cake"]


#List of completed recipes in relation to their scene file
const completed_recipe_scenes: Dictionary={
#All Milkshakes (8)
"Blueberry Milkshake": "res://Scenes/Completed Recipes/blueberry_milkshake.tscn",
"Strawberry Milkshake":"res://Scenes/Completed Recipes/strawberry_milkshake.tscn", 
"Apple Milkshake": "res://Scenes/Completed Recipes/apple_milkshake.tscn",
"Bloodshot Eye Milkshake": "res://Scenes/Completed Recipes/bloodshot_eye_milkshake.tscn",
"Fish Milkshake": "res://Scenes/Completed Recipes/fish_milkshake.tscn",
"Biscuit Milkshake": "res://Scenes/Completed Recipes/biscuit_milkshake.tscn",
"Crystal Milkshake": "res://Scenes/Completed Recipes/crystal_milkshake.tscn",
"Basic Milkshake": "res://Scenes/Completed Recipes/basic_milkshake.tscn",

#All Cakes (9)
"Blueberry Cake": "res://Scenes/Completed Recipes/blueberry_cake.tscn", 
"Strawberry Cake": "res://Scenes/Completed Recipes/strawberry_cake.tscn", 
"Apple Cake": "res://Scenes/Completed Recipes/apple_cake.tscn", 
"Fish Cake": "res://Scenes/Completed Recipes/fish_cake.tscn", 
"Bloody Cake": "res://Scenes/Completed Recipes/bloody_cake.tscn", 
"Biscuit Cake": "res://Scenes/Completed Recipes/biscuit_cake.tscn",
"Crystal Cake": "res://Scenes/Completed Recipes/crystal_cake.tscn",
"Basic Cake": "res://Scenes/Completed Recipes/basic_cake.tscn", 
"Carrot Cake": "res://Scenes/Completed Recipes/carrot_cake.tscn", 

}


#A dictonary of all the customer timelines with Dialogic
const customer_timelines: Dictionary={
#All base customer 
"grey_order": "res://Dialogic/Timelines/customer_base/grey_order.dtl",
"grey_right":"res://Dialogic/Timelines/customer_base/grey_right.dtl", 
"grey_wrong": "res://Dialogic/Timelines/customer_base/grey_wrong.dtl",
"grey_restate": "res://Dialogic/Timelines/customer_base/grey_restate.dtl",

#All Cerberus 
"cerberus_order": "res://Dialogic/Timelines/Cerberus/cerberus_order.dtl",
"cerberus_right": "",
"cerberus_wrong": "",
"cerberus_restate": "",

}

var current_customer = null

#Keep track of if a customer is waiting for food or not
var line_spot_1_occupied = false

#Charatcer order
var order: Array=[]
#Keeps track of what food the customer still needs
var food_still_needed: Array = []
