class_name TradePhaseUI

extends Control

var store : Goods
@export var goods_counters : GoodsCounters


func _ready():
	store = goods_counters.store

func _on_trade_accepted(cost : Goods, result : Goods) -> void:
	print("Trade accepted!" + cost.to_shorthand_label() + "->" + result.to_shorthand_label())
	if (store.has_cost(cost)):
		store.spend(cost)
		store.add(result)
		goods_counters.display_goods()
	else:
		push_error("Not enough to trade in store")
	
func _on_next_trade():
	print("Next trade!")
