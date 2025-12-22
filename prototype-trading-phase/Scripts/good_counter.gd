class_name GoodCounter

extends HBoxContainer

@onready var good_label : Label = $GoodLabel
@onready var good_value : Label = $GoodValue

func set_label(new_label : String) -> void:
	good_label.text = new_label

func set_value(new_value : int) -> void:
	good_value.text = str(new_value)
