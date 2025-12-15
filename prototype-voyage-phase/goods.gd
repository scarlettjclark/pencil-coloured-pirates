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
