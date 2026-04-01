extends Node2D

@onready var _path: Path2D = $Path
@onready var _path_visual: Line2D = $PathVisual
@onready var _spawn_point: Node2D = $SpawnPoint
@onready var _goal_point: Node2D = $GoalPoint

# Fixed graybox route for the first level (landscape/mobile-friendly layout).
var _path_points := PackedVector2Array([
	Vector2(100, 360),
	Vector2(320, 360),
	Vector2(320, 170),
	Vector2(650, 170),
	Vector2(650, 540),
	Vector2(980, 540),
	Vector2(980, 320),
	Vector2(1180, 320),
])

func _ready() -> void:
	_apply_path()

func _apply_path() -> void:
	var curve := Curve2D.new()
	for point in _path_points:
		curve.add_point(point)

	_path.curve = curve
	_path_visual.points = _path_points
	_spawn_point.position = _path_points[0]
	_goal_point.position = _path_points[_path_points.size() - 1]
