class_name Craps
extends game

var Dice_Finished = 0
var Pass_Num = [7,11]
var DontPass_Num = [2,3,12]
var PointSet = false
var Total = 0
var PointPayout = [0,0,0,0,2,1.5,1.2,0,1.2,1.5,2]
var Point = 0
var Money = 100
var Bet = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text = "Pass = 7,11
	Don't Pass = 2,3,12
	Money = " + str(Money)
	$"Bet Label".text = "Bet Amount: " + str(Bet)
	if Point != 0:
		$Label.text = $Label.text + "
		Point = " + str(Point)
		
		pass
	


func RollType(roll:int):

	if PointSet == false:
		Come_Out_Roll(roll)
		pass
	else:
		Point_Phase_Roll(roll)

	pass

func Come_Out_Roll(roll:int):

	if roll == 7 or roll == 11:
		Passwin()
		pass
	else: if roll == 2 or roll == 3 or roll == 12:
		Loss()
		pass
	else:
		Point = roll
		PointSet = true

	pass

	
	pass
func RoundEnd():

	Point = 0
	Bet = 0
	PointSet = false

	pass
func Point_Phase_Roll(roll:int):

	if roll == Point:
		Pointwin()
	if roll == 7:
		Loss()

	pass
	
func Passwin():

	Money = round(Money + Bet + Bet)
	RoundEnd()

	pass
func Loss():

	RoundEnd()

	pass
func Pointwin():

	Money = round(Money + Bet + Bet*PointPayout[Point])
	RoundEnd()

	pass


func _on_die_done() -> void:

	if Dice_Finished == 0:
		Dice_Finished = 1
	else:
		Total = 2 + $Die2/Sprite2D_Dice.get_frame() + $Die/Sprite2D_Dice.get_frame()
		Dice_Finished = 0
		RollType(Total)

	


func _on_bet_up_pressed() -> void:
	if 10<=Money:
		Bet = Bet+10 
		Money = Money - 10


func _on_bet_down_pressed() -> void:
	if Bet != 0:
		Bet = Bet-10
		Money = Money + 10
