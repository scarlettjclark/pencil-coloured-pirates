class_name JobButton

extends Button

@export var job : Job
signal enable_request(job : JobButton)

func _on_pressed():
	enable_request.emit(job)
