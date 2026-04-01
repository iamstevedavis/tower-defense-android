extends Area2D

@export var occupied: bool = false

func can_build() -> bool:
	return not occupied

func mark_occupied() -> void:
	occupied = true
