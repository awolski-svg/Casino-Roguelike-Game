extends Node

@export var Debt = 0
@export var CurrentBalance = 0
@export var CurrentQuota = 0

func hasQuota():
	return (CurrentBalance >= CurrentQuota)

func CanPayDebt():
	return (Debt > CurrentBalance)
	
func PayTowardsDebt(amount):
	if(amount <= CurrentBalance):
		CurrentBalance -= amount
		Debt -= amount
		PayDebtSucessful()
	else:
		PayDebtFail()
	
func PayDebtSucessful():
	pass
	
func PayDebtFail():
	pass

func DebtPaidOff():
	pass
