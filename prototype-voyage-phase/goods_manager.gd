class_name GoodsManager

extends Node

@export var store : Goods
@export var display : VoyagePhaseUI
var current_load = Goods.new()
var jobs_to_run : Array[JobButton] = []

func _ready():
	display.display_goods(store)


func _on_voyage_phase_ui_enable_request(job):
	if store.has_cost(job.cost) and not (job in jobs_to_run):
		current_load.add(job.cost)
		jobs_to_run.append(job)
		job.will_run()

func _on_voyage_phase_ui_run_jobs():
	for job in jobs_to_run:
		print("There is a job!")
		store.spend(job.cost)
		store.add(job.result)
	jobs_to_run.clear()
	display.display_goods(store)
