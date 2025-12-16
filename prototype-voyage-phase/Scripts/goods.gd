## This class bundles together the various types of goods in this game so that
## they can be easily compared and passed in a type safe manner

class_name Goods

extends Node

var goods_dict := {"Crew" : 0, 
					"Munitions" : 0, 
					"Supplies" : 0,
					"Booze" : 0,
					"Cloth" : 0,
					"Spices" : 0,
					"Gold" : 0,
					"Notoriety" : 0}

@export var crew : int:
	get:
		return goods_dict["Crew"]
	set(the_crew):
		goods_dict["Crew"] = the_crew
@export var munitions : int:
	get:
		return goods_dict["Munitions"]
	set(the_munitions):
		goods_dict["Munitions"] = the_munitions
@export var supplies : int:
	get:
		return goods_dict["Supplies"]
	set(the_supplies):
		goods_dict["Supplies"] = the_supplies
@export var booze : int:
	get:
		return goods_dict["Booze"]
	set(the_booze):
		goods_dict["Booze"] = the_booze
@export var cloth : int:
	get:
		return goods_dict["Cloth"]
	set(the_cloth):
		goods_dict["Cloth"] = the_cloth
@export var spices : int:
	get:
		return goods_dict["Spices"]
	set(the_spices):
		goods_dict["Spices"] = the_spices
@export var gold : int:
	get:
		return goods_dict["Gold"]
	set(the_gold):
		goods_dict["Gold"] = the_gold
@export var notoriety : int:
	get:
		return goods_dict["Notoriety"]
	set(the_notoriety):
		goods_dict["Notoriety"] = the_notoriety

## Returns whether the goods stored in this object are enough to pay for the
## cost of the parameter goods.
func has_cost(cost : Goods) -> bool:
	var result := true
	for type in goods_dict.keys():
		result = result and (goods_dict[type] >= cost.goods_dict[type])
	return result

func add(to_add : Goods) -> void:
	for type in goods_dict.keys():
		goods_dict[type] += to_add.goods_dict[type]

func spend(to_spend : Goods) -> void:
	for type in goods_dict.keys():
		goods_dict[type] -= to_spend.goods_dict[type]

func has_room_for_more(cost : Goods, current_load : Goods) -> bool:
	var combined = Goods.new()
	combined.add(cost)
	combined.add(current_load)
	return has_cost(combined)

func _to_string() -> String:
	var string = ""
	for type in goods_dict.keys():
		if goods_dict[type] != 0:
			string += type + ": " + str(goods_dict[type]) + "\n"
	return string
	
func to_shorthand_label() -> String:
	var string := ""
	for type in goods_dict.keys():
		if goods_dict[type] != 0:
			var initial = type[0]
			if type == "Crew" or type == "Munitions" or type == "Supplies":
				initial = initial.to_lower()
			string += initial + str(goods_dict[type]) + " "
		
	return string.substr(0, string.length() - 1)
	
