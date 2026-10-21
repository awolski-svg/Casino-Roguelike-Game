class_name CommandCenter
extends Node

# When classes take actions to effect gamestate
# they should use a command instead of changing
# it themselves so we can maintain control of
# certain aspects to have consistency

@export var SceneManager:scene_manager

func ChangeBalance(amount):
	pass

func GiveItem(item:Item):
	pass

func RemoveItem(item:Item):
	pass
	
func ChangeDebt(amount):
	pass

func hasName(sc,name:String):
	#print(sc)
	print("Checking: ", sc.SceneType, " against ", name)
	return sc.SceneType == name

func ChangeScene(SceneName:String):
	print("received: " + SceneName)
	SceneManager.ChangeScene(SceneManager.sceneList.get(SceneManager.sceneList.find_custom(hasName.bind(SceneName))))
