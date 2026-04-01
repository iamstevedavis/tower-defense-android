extends EnemyBase

func _ready() -> void:
	enemy_name = "Goblin"
	max_health = 35.0
	move_speed = 80.0
	gold_reward = 5
	super._ready()
