class_name GoodsCounters
extends VBoxContainer

@export var crewCounter : GoodCounter
@export var munitionsCounter : GoodCounter
@export var suppliesCounter : GoodCounter
@export var boozeCounter : GoodCounter
@export var clothCounter : GoodCounter
@export var spicesCounter : GoodCounter
@export var goldCounter : GoodCounter
@export var notorietyCounter : GoodCounter

func _ready():
	set_label_initials()
	reset_counters()

func set_label_initials() -> void:
	crewCounter.set_label('c')
	munitionsCounter.set_label('m')
	suppliesCounter.set_label('s')
	boozeCounter.set_label('B')
	clothCounter.set_label('C')
	spicesCounter.set_label('S')
	goldCounter.set_label('G')
	notorietyCounter.set_label('N')

func reset_counters() -> void:
	set_crew(0)
	set_munitions(0)
	set_supplies(0)
	set_booze(0)
	set_cloth(0)
	set_spices(0)
	set_gold(0)
	set_notoriety(0)

func set_crew(new_crew : int) -> void:
	crewCounter.set_value(new_crew)

func set_munitions(new_munitions : int) -> void:
	munitionsCounter.set_value(new_munitions)

func set_supplies(new_supplies : int) -> void:
	suppliesCounter.set_value(new_supplies)

func set_booze(new_booze : int) -> void:
	boozeCounter.set_value(new_booze)

func set_cloth(new_cloth : int) -> void:
	clothCounter.set_value(new_cloth)

func set_spices(new_spices : int) -> void:
	spicesCounter.set_value(new_spices)

func set_gold(new_gold : int) -> void:
	goldCounter.set_value(new_gold)

func set_notoriety(new_notoriety : int) -> void:
	notorietyCounter.set_value(new_notoriety)
	
	
