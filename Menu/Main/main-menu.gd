extends Control

# Start button
# TODO: Load into level scene (possibly a level selector if multiple levels exists???)
func _on_start_pressed() -> void:
	AudioManager.play_sound("res://Sounds/UI/MenuSelect.ogg")

func _on_start_button_mouse_entered() -> void:
	AudioManager.play_sound("res://Sounds/UI/MenuSelect.ogg")

# TODO: Add unhover SFX
func _on_start_button_mouse_exited() -> void:
	print("Mouse is no longer hovering over the Start button")
