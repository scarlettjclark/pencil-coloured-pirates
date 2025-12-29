class_name GoodsCounters
extends VBoxContainer

@export var crew_counter : GoodCounter
@export var munitions_counter : GoodCounter
@export var supplies_counter : GoodCounter
@export var booze_counter : GoodCounter
@export var cloth_counter : GoodCounter
@export var spices_counter : GoodCounter
@export var gold_counter : GoodCounter
@export var notoriety_counter : GoodCounter
@export var store : GoodsResource

func _ready():
	set_label_initials()
	display_goods()

func set_label_initials() -> void:
	crew_counter.set_label('c')
	munitions_counter.set_label('m')
	supplies_counter.set_label('s')
	booze_counter.set_label('B')
	cloth_counter.set_label('C')
	spices_counter.set_label('S')
	gold_counter.set_label('G')
	notoriety_counter.set_label('N')

func display_goods() -> void:
	crew_counter.set_value(store.crew)
	munitions_counter.set_value(store.munitions)
	supplies_counter.set_value(store.supplies)
	booze_counter.set_value(store.booze)
	cloth_counter.set_value(store.cloth)
	spices_counter.set_value(store.spices)
	gold_counter.set_value(store.gold)
	notoriety_counter.set_value(store.notoriety)

#func reset_counters() -> void:
	#store.crew = 0
	#store.munitions = 0
	#store.supplies = 0
	#store.booze = 0
	#store.cloth = 0
	#store.spices = 0
	#store.gold = 0
	#store.notoriety = 0

func set_crew(new_crew : int) -> void:
	crew_counter.set_value(new_crew)
	store.crew = new_crew

func set_munitions(new_munitions : int) -> void:
	munitions_counter.set_value(new_munitions)
	store.munitions = new_munitions

func set_supplies(new_supplies : int) -> void:
	supplies_counter.set_value(new_supplies)
	store.supplies = new_supplies

func set_booze(new_booze : int) -> void:
	booze_counter.set_value(new_booze)
	store.booze = new_booze

func set_cloth(new_cloth : int) -> void:
	cloth_counter.set_value(new_cloth)
	store.cloth = new_cloth

func set_spices(new_spices : int) -> void:
	spices_counter.set_value(new_spices)
	store.spices = new_spices

func set_gold(new_gold : int) -> void:
	gold_counter.set_value(new_gold)
	store.gold = new_gold

func set_notoriety(new_notoriety : int) -> void:
	notoriety_counter.set_value(new_notoriety)
	store.notoriety = new_notoriety
	
	
