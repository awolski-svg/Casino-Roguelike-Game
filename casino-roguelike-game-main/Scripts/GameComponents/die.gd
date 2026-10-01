extends Area2D

var rng = RandomNumberGenerator.new()
var Default_Sides = [1,2,3,4,5,6]
# Array for sides of dice. Allows dice faces to be changed

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _Roll_get_value(sides:Array):
	return sides[rng.randi_range(0,sides.size())]
	#Returns a number from the array given to it
	
func start_roll():
	$Sprite2D_Dice.hide()
	$Sprite2D_Dice/AnimatedSprite2D_Dice.show()
	$Sprite2D_Dice/AnimatedSprite2D_Dice.play(Roll)
	#Starts the animation for the roll

func end_roll():
	$Sprite2D_Dice.frame(Roll()-1)
	$Sprite2D_Dice.show()
	$Sprite2D_Dice/AnimatedSprite2D_Dice.hide()
	#Ends the animation for the roll
	

func Roll() -> int:
	var value
	return _Roll_get_value(Default_Sides)


# player picks up die (to roll?)
	# I do not understand this, The PutAway function can be used for this
func Pickup() -> void:
	pass
	
# funciton to cleanup die, or put in specific location?
 	# Useful overall for moving dice around the main scene.
func PutAway(toLocation:Vector2) -> void:
	position = toLocation
