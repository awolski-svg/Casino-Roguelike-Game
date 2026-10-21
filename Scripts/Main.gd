extends Scene

@export var die_scene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var newDie = die_scene.instantiate()
	
	var newDieScript = newDie.get_script()
	
	print(newDie.transform)
	newDie.position = Vector2(50,20)
	print(newDie.transform)
	
	add_child(newDie)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
