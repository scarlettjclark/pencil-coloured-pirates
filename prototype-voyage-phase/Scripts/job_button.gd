class_name JobButton

extends Button

@export var job : Job
var running := false
signal enable_request(job_button : JobButton)

func _init(the_job : Job):
	job = the_job
	text = job.to_shorthand_label()
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	enable_request.emit(self)

func set_running() -> void:
	if not running:
		text += " RUNNING"
		running = true

func set_not_running() -> void:
	if running:
		text = text.substr(0, text.length() - 7)
		running = false
