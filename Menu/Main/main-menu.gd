extends Control

# Start Button
func _on_start_pressed() -> void:
	%MenuSelect.play()
	get_tree().change_scene_to_file("res://game.tscn")
func _on_start_button_mouse_entered() -> void:
	%MenuSelect.play()
	
func _on_start_button_mouse_exited() -> void:
	%MenuSelect.play()
