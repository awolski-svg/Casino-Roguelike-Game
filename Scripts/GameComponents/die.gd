extends Area2D

var rng = RandomNumberGenerator.new()
@export var sides = 6
var rolling = false

func _Roll_get_value(num):
	return rng.randi_range(0,num)
	
func Roll() -> int:
	if(rolling):
		return -1
	rolling = true	
	var value
	value = _Roll_get_value(6)
	
	# do animation stuff
	$AnimatedSprite2D.play("Rolling")
	print("rolling")
	await get_tree().create_timer(2.0).timeout
	print("rolled")
	
	$AnimatedSprite2D.play("Rolled_"+str(value))
	
	# set final part of roll to number
	
	# everything else before roll is 'finished'
	rolling = false
	return value

func Rolled(rolledNum) -> void:
	$AnimatedSprite2D.play("Rolled_" + rolledNum)
	pass

# player picks up die (to roll?)
func Pickup() -> void:
	pass
	
# funciton to cleanup die, or put in specific location?
func PutAway(toLocation:Vector2) -> void:
	
	pass
