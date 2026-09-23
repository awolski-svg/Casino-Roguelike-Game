extends Area2D

var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _Roll_get_value(sides:int):
	rng.randi_range(0,sides)
	
func Roll() -> int:
	var value
	value = _Roll_get_value(6)
	
	# do animation stuff
	
	# set final part of roll to number
	
	# everything else before roll is 'finished'
	
	return value

# player picks up die (to roll?)
func Pickup() -> void:
	pass
	
# funciton to cleanup die, or put in specific location?
func PutAway(toLocation:Vector2) -> void:
	
	pass
