class_name TradePhaseUI

extends Control




func _on_trade_accepted(cost : Goods, result : Goods) -> void:
	print("Trade accepted!" + cost.to_shorthand_label() + "->" + result.to_shorthand_label())

func _on_next_trade():
	print("Next trade!")
