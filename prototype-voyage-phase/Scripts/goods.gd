## This class bundles together the various types of goods in this game so that
## they can be easily compared and passed in a type safe manner

class_name Goods

extends Node

@export var crew : int
@export var munitions : int
@export var supplies : int
@export var booze : int
@export var cloth : int
@export var spices : int
@export var gold : int
@export var notoriety : int

## Returns whether the goods stored in this object are enough to pay for the
## cost of the parameter goods.
func has_cost(cost : Goods) -> bool:
	return (crew >= cost.crew and
			munitions >= cost.munitions and 
			supplies >= cost.supplies and 
			booze >= cost.booze and 
			cloth >= cost.cloth and 
			spices >= cost.spices and
			gold >= cost.gold and 
			notoriety >= cost.notoriety)

func add(to_add : Goods) -> void:
	crew += to_add.crew
	munitions += to_add.munitions
	supplies += to_add.supplies
	booze += to_add.supplies
	cloth += to_add.cloth
	spices += to_add.spices
	gold += to_add.gold
	notoriety += to_add.notoriety

func spend(to_spend : Goods) -> void:
	crew -= to_spend.crew
	munitions -= to_spend.munitions
	supplies -= to_spend.supplies
	booze -= to_spend.booze
	cloth -= to_spend.cloth
	spices -= to_spend.spices
	gold -= to_spend.gold
	notoriety -= to_spend.notoriety
