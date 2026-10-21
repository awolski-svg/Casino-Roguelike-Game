class_name RandomList
extends Node



var items: Array[Node] = [] # allows anything decending from node
var weights: Array[int] = []
var rng = RandomNumberGenerator.new()


func importList(filepath):
	pass
	

func setList(list):
	for i:List_Item in list:
		items.append(i.value)
		weights.append(i.weight)
	

func getRandom():
	return items.pick_random()
	
func getRandomWeighted():
	return items[rng.rand_weighted(weights)]
	
func add_list_item(list_item:List_Item):
	items.append(list_item.value)
	weights.append(list_item.weight)
	
	
func add_directy(v, w):
	items.append(v)
	weights.append(w)
	
