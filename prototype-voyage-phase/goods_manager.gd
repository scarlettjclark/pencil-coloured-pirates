class_name GoodsManager

extends Node

@export var store : Goods
@export var display : VoyagePhaseUI

func _ready():
	display.display_goods(store)


func _on_voyage_phase_ui_enable_request(cost, job):
	print("Enable Request Received")
