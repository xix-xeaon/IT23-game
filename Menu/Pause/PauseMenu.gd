extends CanvasLayer

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		if not get_tree().paused: # Checks if current scene is paused or not
			pause_game()
		else:
			unpause_game()


func pause_game() -> void:
	get_tree().paused = true # Pause the game and show the pause menu
	show()
	
	%Pause.play()
	%ContinueButton.grab_focus() # Useful for navigating with keyboard or controller

func unpause_game() -> void:
	get_tree().paused = false # Unpause the game and hide the pause menu
	hide()
	
	%Unpause.play()


func _on_continue_button_pressed() -> void:
	unpause_game()

func _on_restart_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_quit_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Menu/Main/main-menu.tscn") # Main menu scene
