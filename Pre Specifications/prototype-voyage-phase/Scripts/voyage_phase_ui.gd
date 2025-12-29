## This class is responisble for displaying the available goods and jobs that
## the player has access to

class_name VoyagePhaseUI

extends Control

var job_buttons : Array[JobButton]

@export var containers : Array[Container]
@onready var crew_label := $"Goods/Crew Label"
@onready var munitions_label := $"Goods/Munitions Label"
@onready var booze_label := $"Goods/Booze Label"
@onready var supplies_label := $"Goods/Supplies Label"
@onready var cloth_label := $"Goods/Cloth Label"
@onready var spices_label := $"Goods/Spices Label"
@onready var gold_label := $"Goods/Gold Label"
@onready var notoriety_label := $"Goods/Notoriety Label"

signal enable_request(cost : Goods, job : JobButton)
signal run_jobs()

func disable_jobs():
	for job_button in job_buttons:
		job_button.set_not_running()

func display_goods(goods : Goods) -> void:
	crew_label.set_value(goods.crew)
	munitions_label.set_value(goods.munitions)
	booze_label.set_value(goods.booze)
	supplies_label.set_value(goods.supplies)
	cloth_label.set_value(goods.cloth)
	spices_label.set_value(goods.spices)
	gold_label.set_value(goods.gold)
	notoriety_label.set_value(goods.notoriety)

func display_jobs(jobs : Array[Job]) -> Array[JobButton]:
	var return_array : Array[JobButton] = []
	for i in range(jobs.size()):
		var job_button = display_job(jobs[i], containers[i])
		return_array.append(job_button)
	return return_array
	

func display_job(job : Job, container : Container) -> JobButton:
	var job_button = JobButton.new(job)
	container.add_child(job_button)
	job_buttons.append(job_button)
	return job_button

func _on_button_enable_request(job) -> void:
	enable_request.emit(job)

func _on_voyage_button_pressed():
	run_jobs.emit()
