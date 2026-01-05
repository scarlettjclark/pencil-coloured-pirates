class_name StoreLabel

extends Label

func display_store(store : Dictionary[String, int]) -> void:
	text = ""
	for good in store.keys():
		text += good + ": " + str(store[good]) + "\n"
