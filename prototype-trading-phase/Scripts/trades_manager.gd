class_name TradesManager

extends Control

var trades_list : Array[Trade] = []
var current_trade : Trade

func _ready():
	get_trades()
	current_trade = trades_list[0]

func get_trades() -> void:
	var children : Array[Node] = get_children()
	trades_list = []
	
	for child in children:
		if child is Trade:
			trades_list.append(child)

func _on_next_trade() -> void:
	var is_next_trade = false
	
	for trade in trades_list:
		if trade == current_trade:
			trade.hide()
			is_next_trade = true
		elif is_next_trade:
			trade.show()
			is_next_trade = false
		else:
			trade.hide()
	
