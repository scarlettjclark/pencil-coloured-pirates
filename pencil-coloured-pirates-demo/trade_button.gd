extends Button

var cost : Dictionary[String, int] = {"Crew": 3}
var result : Dictionary[String, int] = {"Treasure": 2}

signal trade_made(cost : Dictionary[String, int], result : Dictionary[String, int])

func _pressed():
	trade_made.emit(cost, result)
