class_name GoodsManager

extends Node

@export var store : Goods
@export var display : VoyagePhaseUI
var current_load = Goods.new()
var jobs_to_run : Array[Job] = []

func _ready():
	display.display_goods(store)

func _on_voyage_phase_ui_enable_request(job : Job):
	if store.has_cost(job.cost) and not (job in jobs_to_run):
		current_load.add(job.cost)
		jobs_to_run.append(job)

func _on_voyage_phase_ui_run_jobs():
	for job in jobs_to_run:
		store.spend(job.cost)
		store.add(job.result)
	jobs_to_run.clear()
	display.display_goods(store)
