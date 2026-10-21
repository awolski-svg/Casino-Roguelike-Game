extends Scene

var ShopList:RandomList = RandomList.new()
var selected_item = 0
var current_shop:Array[ShopItem] = []

func rerollShop(num_of_items):
	var i = 0
	
	current_shop.clear()
	
	while (i < num_of_items):
		current_shop.append(ShopList)
		i+=1
	 

func load_shop():
	pass
	
func close_shop():
	print("Closing Shop")
	pass

func buy_selected():
	pass
