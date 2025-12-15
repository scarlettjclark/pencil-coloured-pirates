class_name GoodsManager

extends Node

@export var store : Goods
@export var display : VoyagePhaseUI

func _ready():
	display.display_goods(store)
