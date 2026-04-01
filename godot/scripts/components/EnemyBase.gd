extends Node2D
class_name EnemyBase

@export var enemy_name: String = "Enemy"
@export var max_health: float = 30.0
@export var move_speed: float = 75.0
@export var gold_reward: int = 5

var current_health: float

func _ready() -> void:
	current_health = max_health

func take_damage(amount: float) -> void:
	current_health -= amount
	if current_health <= 0.0:
		queue_free()
