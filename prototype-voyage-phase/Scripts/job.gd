class_name Job

extends Node

@export var cost : Goods
@export var result : Goods

func to_shorthand_label():
	return cost.to_shorthand_label() + "->" + result.to_shorthand_label()
