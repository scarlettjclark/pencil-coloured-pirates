class_name TradesManager

extends Control

var blank_trade = load("res://Scenes/trade.tscn") as PackedScene
var trades_list : Array[TradeResource] = []
var current_trade : int = 0

func _ready():
	get_trades()

func get_trades() -> void:
	trades_list = [load("res://Resources/test_trade_1.tres") as TradeResource,
					load("res://Resources/test_trade_2.tres") as TradeResource]

func _on_next_trade() -> void:
	clear_trades()
	current_trade += 1
	if current_trade < trades_list.size():
		var next_trade : Trade = blank_trade.instantiate()
		next_trade.trade_resource = trades_list[current_trade]
		add_child(next_trade)
	else:
		print("No more trades!")

func load_trade(trade_resource : TradeResource) -> void:
	var trade : Trade = blank_trade.instantiate()
	trade.trade_resource = trade_resource
	trade.display()
	add_child(trade)

func clear_trades():
	for child in get_children():
		queue_free()
