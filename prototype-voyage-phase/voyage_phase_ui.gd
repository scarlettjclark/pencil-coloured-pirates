## This class is responisble for displaying the available goods and jobs that
## the player has access to

class_name VoyagePhaseUI

extends Control

@onready var crew_label = $"Goods/Crew Label"
@onready var munitions_label = $"Goods/Munitions Label"
@onready var booze_label = $"Goods/Booze Label"
@onready var supplies_label = $"Goods/Supplies Label"
@onready var cloth_label = $"Goods/Cloth Label"
@onready var spices_label = $"Goods/Spices Label"
@onready var gold_label = $"Goods/Gold Label"
@onready var notoriety_label = $"Goods/Notoriety Label"

func display_goods(goods : Goods):
	crew_label.set_value(goods.crew)
	munitions_label.set_value(goods.munitions)
	booze_label.set_value(goods.booze)
	supplies_label.set_value(goods.supplies)
	cloth_label.set_value(goods.cloth)
	spices_label.set_value(goods.spices)
	gold_label.set_value(goods.gold)
	notoriety_label.set_value(goods.notoriety)
	
