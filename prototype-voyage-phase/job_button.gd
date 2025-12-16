class_name JobButton

extends Button

@export var cost : Goods
@export var result : Goods

signal enable_request(job : JobButton)

func _on_pressed():
	enable_request.emit(self)

func will_run():
	text += " ENABLED"
