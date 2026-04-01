extends Area2D

@export var speed: float = 300.0
@export var damage: float = 10.0

func _process(delta: float) -> void:
	position.x += speed * delta
