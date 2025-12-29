class_name Trade

extends VBoxContainer

@onready var yes_button : Button = $ReplyButtons/YesButton 
@onready var no_button : Button = $ReplyButtons/NoButton
@onready var trade_descriptor : Label = $TradeDescriptor
@export var trade_resource : TradeResource

signal trade_accepted(cost : GoodsResource, result : GoodsResource)
signal next_trade()

func _ready():
	trade_descriptor.text = trade_resource.cost.to_shorthand_label() + " -> " + trade_resource.result.to_shorthand_label()

func _on_yes_button_pressed():
	trade_accepted.emit(trade_resource.cost, trade_resource.result)
	next_trade.emit()

func _on_no_button_pressed():
	next_trade.emit()
