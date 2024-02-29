extends CanvasLayer

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		toggle_pause_menu()


func toggle_pause_menu() -> void:
	if get_tree().paused == false:
		get_tree().paused = true
		show()
		
		%Paused.play()
		%ContinueButton.grab_focus()
	else:
		%Unpaused.play()
		
		hide()
		get_tree().paused = false


func _on_continue_button_pressed() -> void:
	toggle_pause_menu()


func _on_restart_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_quit_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Menu/Main/main-menu.tscn")
