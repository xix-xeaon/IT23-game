extends Control

func play_sound(file_path: String, volume_db: float, pitch_scale: float):
	# Create AudioStreamPlayer and load file_path
	var audioplayer = AudioStreamPlayer.new()
	var sound = load(file_path)
	
	# Set audio settings (volume, decibel and pitch)
	audioplayer.stream = sound
	audioplayer.volume_db = volume_db
	audioplayer.pitch_scale = pitch_scale
	
	# Create audio node to scene
	add_child(audioplayer)
	
	# Connect 'finished' signal
	audioplayer.finished.connect(_on_music_finished)
	
	# Play audio
	audioplayer.play()

func _on_music_finished() -> void:
	find_child("AudioStreamPlayer").queue_free()

# Start button
# TODO: Add button click SFX + level scene
func _on_start_pressed() -> void:
	play_sound("res://Sounds/UI/MenuSelect.ogg", 1, 1)

# TODO: Add hover SFX
func _on_start_button_mouse_entered() -> void:
	play_sound("res://Sounds/UI/MenuSelect.ogg", 1, 1)

# TODO: Add unhover SFX
func _on_start_button_mouse_exited() -> void:
	print("Mouse is no longer hovering over the Start button")
