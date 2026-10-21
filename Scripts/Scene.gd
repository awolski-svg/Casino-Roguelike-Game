class_name Scene
extends Control

@export var SceneType:String = ""

func open():
	print("opening")
	self.show()
	
func close():
	print("closing")
	self.hide()
	
	
signal SceneChange(sceneName:String)

func ChangeScene(name:String):
	SceneChange.emit(name)
	print("emited")
	
