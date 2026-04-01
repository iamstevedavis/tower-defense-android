extends Node2D
class_name EnemyBase

signal reached_goal(enemy: EnemyBase)

@export var enemy_name: String = "Enemy"
@export var move_speed: float = 80.0

var _path_follow: PathFollow2D

func setup_path(path: Path2D) -> void:
	_path_follow = PathFollow2D.new()
	_path_follow.rotates = false
	path.add_child(_path_follow)
	reparent(_path_follow)
	position = Vector2.ZERO

func _process(delta: float) -> void:
	if _path_follow == null:
		return

	_path_follow.progress += move_speed * delta
	if _path_follow.progress_ratio >= 1.0:
		reached_goal.emit(self)
		queue_free()
