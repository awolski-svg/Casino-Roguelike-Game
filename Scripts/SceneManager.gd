class_name scene_manager
extends Node


@onready var sceneList:Array[Scene] = [
	$"../Main",
	$"../ShopScene",
	$"../Gambling"
]
@onready var current_scene = $"../Main" # set start here

func ChangeScene(next_scene):
	close_scene()
	# transition process
	open_scene(next_scene)
	pass

func close_scene(): # start closing process of the scene
	if(current_scene != null):
		current_scene.close()

func open_scene(scene): # start opening process of the scene
	scene.open()
	current_scene = scene
	pass
