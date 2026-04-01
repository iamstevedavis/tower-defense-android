extends Area2D

@export var occupied: bool = false
@export var tower_scene: PackedScene = preload("res://scenes/towers/ArcherTower.tscn")

@onready var _visual: Polygon2D = $Visual

func _ready() -> void:
	input_pickable = true
	_update_visual()

func can_build() -> bool:
	return not occupied

func mark_occupied() -> void:
	occupied = true
	_update_visual()

func _input_event(_viewport: Viewport, event: InputEvent, _shape_idx: int) -> void:
	if not _is_place_input(event):
		return

	if not can_build() or tower_scene == null:
		return

	var tower := tower_scene.instantiate() as Node2D
	if tower == null:
		return

	add_child(tower)
	tower.position = Vector2.ZERO
	mark_occupied()

func _is_place_input(event: InputEvent) -> bool:
	if event is InputEventMouseButton:
		var mouse_event := event as InputEventMouseButton
		return mouse_event.button_index == MOUSE_BUTTON_LEFT and mouse_event.pressed

	if event is InputEventScreenTouch:
		var touch_event := event as InputEventScreenTouch
		return touch_event.pressed

	return false

func _update_visual() -> void:
	if occupied:
		_visual.color = Color(0.396078, 0.396078, 0.447059, 0.65)
	else:
		_visual.color = Color(0.345098, 0.65098, 0.913725, 0.65)
