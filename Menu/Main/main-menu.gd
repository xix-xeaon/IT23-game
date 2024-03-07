extends Control

# Start Button
func _on_start_pressed() -> void:
	%MenuSelect.play()
	get_tree().change_scene_to_file("res://game.tscn")
