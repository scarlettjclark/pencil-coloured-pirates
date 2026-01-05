extends Button

@export var cost : Dictionary[String, int]
@export var result : Dictionary[String, int]

signal job_running_request(cost : Dictionary[String, int], result : Dictionary[String, int], job_running_method : Callable)

func job_running():
	print(str(cost) + " -> " + str(result) + " is running!")

func _pressed():
	job_running_request.emit(cost, result, job_running)
