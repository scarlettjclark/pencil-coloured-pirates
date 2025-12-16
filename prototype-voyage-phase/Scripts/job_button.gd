class_name JobButton

extends Button

@export var job : Job
signal enable_request(job : JobButton)

func _init(the_job : Job, the_text : String):
	job = the_job
	text = the_text
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	enable_request.emit(job)
