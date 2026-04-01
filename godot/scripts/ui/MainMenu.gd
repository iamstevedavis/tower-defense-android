extends Control

@onready var _start_button: Button = $CenterContainer/VBoxContainer/StartButton

func _ready() -> void:
	_start_button.pressed.connect(_on_start_pressed)

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level/Level.tscn")
