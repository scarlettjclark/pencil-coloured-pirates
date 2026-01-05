extends Control

var goods_store : Dictionary[String, int] = {"Rations" : 3}

@onready var store_label : StoreLabel = $"Voyage Phase UI/StoreLabel"

func _ready():
	display()

func display():
	store_label.display_store(goods_store)

func exchange(cost : Dictionary[String, int], result : Dictionary[String, int]):
	if exchange_costs_can_be_paid(cost):
		spend(cost)
		add(result)
		display()
	else:
		print("Couldn't pay costs.\nCost: " + str(cost) + "\nStore: " + str(goods_store))

func spend(cost: Dictionary[String, int]) -> void:
	for good in cost.keys():
		if good in goods_store.keys():
			goods_store[good] -= cost[good]
		else:
			push_error("Tried spending " + str(cost) + " with only " + str(store_label) + " in the store.")

func add(result: Dictionary[String, int]) -> void:
	for good in result.keys():
		if good in goods_store.keys():
			goods_store[good] += result[good]
		else:
			goods_store[good] = result[good]

func exchange_costs_can_be_paid(cost : Dictionary[String, int]) -> bool:
	var check_each_good = func(good_string): return good_cost_in_store(good_string, cost[good_string])
	return cost.keys().all(check_each_good)

func good_cost_in_store(cost_good : String, cost_value : int) -> bool:
	if cost_good in goods_store.keys():
		if goods_store[cost_good] >= cost_value:
			return true
		else:
			print("Cost value " + str(cost_value) + " but " + str(goods_store[cost_good]) + " in store")
	else:
		print(cost_good + " not in store")
	return false

func _on_job_running_request(cost, _result, job_running_method):
	if exchange_costs_can_be_paid(cost):
		job_running_method.call()
