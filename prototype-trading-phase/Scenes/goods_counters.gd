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
@export var crew : int
@export var munitions : int
@export var supplies : int
@export var booze : int
@export var cloth : int
@export var spices : int
@export var gold : int
		
@export var notoriety : int:
	set(new_notoriety):
		notoriety_counter.set_value(new_notoriety)
		notoriety = new_notoriety

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
	crew_counter.set_value(crew)
	munitions_counter.set_value(munitions)
	supplies_counter.set_value(supplies)
	booze_counter.set_value(booze)
	cloth_counter.set_value(cloth)
	spices_counter.set_value(spices)
	gold_counter.set_value(gold)
	notoriety_counter.set_value(notoriety)

#func reset_counters() -> void:
	#crew = 0
	#munitions = 0
	#supplies = 0
	#booze = 0
	#cloth = 0
	#spices = 0
	#gold = 0
	#notoriety = 0

func set_crew(new_crew : int) -> void:
	crew_counter.set_value(new_crew)
	crew = new_crew

func set_munitions(new_munitions : int) -> void:
	munitions_counter.set_value(new_munitions)
	munitions = new_munitions

func set_supplies(new_supplies : int) -> void:
	supplies_counter.set_value(new_supplies)
	supplies = new_supplies

func set_booze(new_booze : int) -> void:
	booze_counter.set_value(new_booze)
	booze = new_booze

func set_cloth(new_cloth : int) -> void:
	cloth_counter.set_value(new_cloth)
	cloth = new_cloth

func set_spices(new_spices : int) -> void:
	spices_counter.set_value(new_spices)
	spices = new_spices

func set_gold(new_gold : int) -> void:
	gold_counter.set_value(new_gold)
	gold = new_gold

func set_notoriety(new_notoriety : int) -> void:
	notoriety_counter.set_value(new_notoriety)
	notoriety = new_notoriety
	
	
