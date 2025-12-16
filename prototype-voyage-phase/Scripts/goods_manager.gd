class_name GoodsManager

extends Node

@export var store : Goods
@export var display : VoyagePhaseUI
@export var jobs_to_display : Array[Job]
var current_load = Goods.new()
var jobs_to_run : Array[Job] = []

func _ready():
	display.display_goods(store)
	var buttons = display.display_jobs(jobs_to_display)
	
	for button in buttons:
		button.enable_request.connect(_on_voyage_phase_ui_enable_request)

func _on_voyage_phase_ui_enable_request(job_button : JobButton):
	var job = job_button.job
	print("Current load: " + str(current_load))
	print("Job to add: " + str(job.cost))
	if store.has_room_for_more(current_load, job.cost) and not (job in jobs_to_run):
		current_load.add(job.cost)
		jobs_to_run.append(job)
		job_button.set_running()

func _on_voyage_phase_ui_run_jobs():
	for job in jobs_to_run:
		store.spend(job.cost)
		store.add(job.result)
	jobs_to_run.clear()
	display.display_goods(store)
	display.disable_jobs()
