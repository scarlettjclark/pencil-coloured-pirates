class_name JobButton

extends Button

@export var job : Job
signal enable_request(job_button : JobButton)

func _init(the_job : Job):
	job = the_job
	text = job.to_shorthand_label()
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	enable_request.emit(self)

func set_running() -> void:
	text += " RUNNING"

func set_not_running() -> void:
	text = text.substr(0, text.length() - 7)
		
