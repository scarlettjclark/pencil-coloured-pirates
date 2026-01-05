extends Control

var goods_store : Dictionary[String, int] = {"Crew" : 3}

@onready var store_label : StoreLabel = $"Voyage Phase UI/StoreLabel"

func _ready():
	display()

func display():
	store_label.display_store(goods_store)

func _on_button_trade_made(cost, result) -> void:
	for good in cost.keys():
		if good in goods_store.keys():
			goods_store[good] -= cost[good]
	for good in result.keys():
		if good in goods_store.keys():
			goods_store[good] += result[good]
		else:
			goods_store[good] = result[good]
	display()

func exchange_costs_can_be_paid(cost : Dictionary[String, int]) -> bool:
	var check_each_cost = func(goods_string): good_cost_in_store(goods_string, cost[goods_string])
	return cost.keys().all(check_each_cost)

func good_cost_in_store(cost_good : String, cost_value : int) -> bool:
	if cost_good in goods_store.keys():
		if goods_store[cost_good] >= cost_value:
			return true
	return false
