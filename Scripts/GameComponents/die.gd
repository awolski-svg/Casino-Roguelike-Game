extends Area2D
signal rolling
signal Done
var rng = RandomNumberGenerator.new()
var Default_Sides = [1,2,3,4,5,6]
var Rolling = false
# Array for sides of dice. Allows dice faces to be changed

func _ready() -> void:
	start_roll()
	
func Start_Stop():
	if Rolling == false:
		start_roll()
	else:
		end_roll()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _Roll_get_value(sides:Array):
	return sides[rng.randi_range(0,(sides.size()-1))]
	#Returns a number from the array given to it
	
func start_roll():
	$Sprite2D_Dice.hide()
	$AnimatedSprite2D_Dice.show()
	$AnimatedSprite2D_Dice.play()
	Rolling = true
	emit_signal("rolling")
	#Starts the animation for the roll

func end_roll():
	$Sprite2D_Dice.set_frame(Roll()-1)
	$Sprite2D_Dice.show()
	$AnimatedSprite2D_Dice.hide()
	Rolling = false
	emit_signal("Done")
	
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


func _on_button_pressed() -> void:
	Start_Stop()
