## Contains an initial for a good and allows a goods counter to be displayed
## below that initial
class_name TextGoodsLabel

extends Label

@export var initial : String

func set_value(value : int):
	text = initial + "\n" + str(value)
