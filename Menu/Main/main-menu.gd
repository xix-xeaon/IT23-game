extends Control

# Start button
# TODO: Load into level scene (possibly a level selector if multiple levels exists???)
func _on_start_pressed() -> void:
	AudioManager.play_sound("res://Sounds/UI/MenuSelect.ogg", 6, 2.5)

func _on_start_button_mouse_entered() -> void:
	AudioManager.play_sound("res://Sounds/UI/MenuSelect.ogg", 6, 2)

func _on_start_button_mouse_exited() -> void:
	AudioManager.play_sound("res://Sounds/UI/MenuSelect.ogg", 6, 2)
