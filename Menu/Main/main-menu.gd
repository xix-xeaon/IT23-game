extends Control

# Start button
# TODO: Add button click SFX + level scene
func _on_start_pressed() -> void:
	print("Mouse has pressed the Start button")

# TODO: Add hover SFX
func _on_start_button_mouse_entered() -> void:
	print("Mouse is hovering over the Start button")

# TODO: Add unhover SFX
func _on_start_button_mouse_exited() -> void:
	print("Mouse is no longer hovering over the Start button")
