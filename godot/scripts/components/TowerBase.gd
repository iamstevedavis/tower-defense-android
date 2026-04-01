extends Node2D
class_name TowerBase

@export var tower_name: String = "Tower"
@export var cost: int = 50
@export var attack_range: float = 120.0
@export var attack_damage: float = 10.0
@export var attack_interval: float = 1.0

func get_tower_summary() -> String:
	return "%s (cost: %d)" % [tower_name, cost]
