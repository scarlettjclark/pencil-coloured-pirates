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
@export var crew : int:
	set(new_crew):
		crew_counter.set_value(new_crew)
		crew = new_crew
@export var munitions : int:
	set(new_munitions):
		munitions_counter.set_value(new_munitions)
		munitions = new_munitions
@export var supplies : int:
	set(new_supplies):
		supplies_counter.set_value(new_supplies)
		supplies = new_supplies
@export var booze : int:
	set(new_booze):
		booze_counter.set_value(new_booze)
		booze = new_booze
@export var cloth : int:
	set(new_cloth):
		cloth_counter.set_value(new_cloth)
		cloth = new_cloth
@export var spices : int:
	set(new_spices):
		spices_counter.set_value(new_spices)
		spices = new_spices
@export var gold : int:
	set(new_gold):
		gold_counter.set_value(new_gold)
		gold = new_gold
		
@export var notoriety : int:
	set(new_notoriety):
		notoriety_counter.set_value(new_notoriety)
		notoriety = new_notoriety

func _ready():
	set_label_initials()
	reset_counters()

func set_label_initials() -> void:
	crew_counter.set_label('c')
	munitions_counter.set_label('m')
	supplies_counter.set_label('s')
	booze_counter.set_label('B')
	cloth_counter.set_label('C')
	spices_counter.set_label('S')
	gold_counter.set_label('G')
	notoriety_counter.set_label('N')

func reset_counters() -> void:
	crew = 0
	munitions = 0
	supplies = 0
	booze = 0
	cloth = 0
	spices = 0
	gold = 0
	notoriety = 0

func set_crew(new_crew : int) -> void:
	crew_counter.set_value(new_crew)

func set_munitions(new_munitions : int) -> void:
	munitions_counter.set_value(new_munitions)

func set_supplies(new_supplies : int) -> void:
	supplies_counter.set_value(new_supplies)

func set_booze(new_booze : int) -> void:
	booze_counter.set_value(new_booze)

func set_cloth(new_cloth : int) -> void:
	cloth_counter.set_value(new_cloth)

func set_spices(new_spices : int) -> void:
	spices_counter.set_value(new_spices)

func set_gold(new_gold : int) -> void:
	gold_counter.set_value(new_gold)

func set_notoriety(new_notoriety : int) -> void:
	notoriety_counter.set_value(new_notoriety)
	
	
