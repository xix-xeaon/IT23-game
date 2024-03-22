extends Control

signal settings_back_button

func update_sound_label() -> void:
	# Update sound label with current value on the slider
	if %VolumeSlider.value >= 0:
		%SoundLabel.text = "Sound (" + str(%VolumeSlider.value * 100) + "%)"

func _ready() -> void:
	update_sound_label()

func _on_volume_slider_value_changed(_value: float) -> void:
	update_sound_label()

func _on_back_button_pressed() -> void:
	emit_signal("settings_back_button")
