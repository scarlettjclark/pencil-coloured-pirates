class_name Trade

extends VBoxContainer

@onready var yes_button : Button = $ReplyButtons/YesButton 
@onready var no_button : Button = $ReplyButtons/NoButton
@onready var trade_descriptor : Label = $TradeDescriptor
@onready var cost : GoodsResource = load("res://Resources/test_cost_1.tres")
@onready var result : GoodsResource = load("res://Resources/test_result_1.tres")

signal trade_accepted(cost : Goods, result : Goods)
signal next_trade()

func _ready():
	trade_descriptor.text = cost.to_shorthand_label() + " -> " + result.to_shorthand_label()

func _on_yes_button_pressed():
	trade_accepted.emit(cost, result)
	next_trade.emit()

func _on_no_button_pressed():
	next_trade.emit()
