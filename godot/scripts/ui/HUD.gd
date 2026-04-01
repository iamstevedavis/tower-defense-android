extends CanvasLayer

@onready var _gold_label: Label = $MarginContainer/TopRow/GoldLabel
@onready var _lives_label: Label = $MarginContainer/TopRow/LivesLabel
@onready var _wave_label: Label = $MarginContainer/TopRow/WaveLabel

func set_gold(value: int) -> void:
	_gold_label.text = "Gold: %d" % value

func set_lives(value: int) -> void:
	_lives_label.text = "Lives: %d" % value

func set_wave(current: int, total: int) -> void:
	_wave_label.text = "Wave: %d/%d" % [current, total]
