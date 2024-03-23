extends Control

var settings_menu = preload("res://Menu/Settings/Settings.tscn")

# Start Button
func _on_start_pressed() -> void:
	%MenuSelect.play()
	get_tree().change_scene_to_file("res://game.tscn")

# Settings button
func _on_settings_button_pressed() -> void:
	%MenuSelect.play()
	add_child(settings_menu.instantiate()) # Create "Settings" scene
