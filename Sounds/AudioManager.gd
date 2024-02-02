extends Node

# Takes three parameters: file_path, volume_db, pitch_scale
# file_path is required, volume_db and pitch_scale is not a requirement
# volume_db and pitch_scale defaults to value of 1 if no value is set when
# called in the code.
func play_sound(file_path: String, volume_db: float = 1, pitch_scale: float = 1):
	if file_path != null:
		var sound = load(file_path)
		
		# Create 'AudioStreamPlayer' node
		var audioplayer = AudioStreamPlayer.new()
		
		# Set sound settings (sound, decibel and pitch)
		audioplayer.stream = sound
		audioplayer.volume_db = volume_db
		audioplayer.pitch_scale = pitch_scale
		
		# Connect 'finished' signal and queue_free once sound finished playing
		audioplayer.finished.connect(Callable(audioplayer, "queue_free"))
		
		# Create node and play sound
		get_tree().current_scene.add_child(audioplayer)
		audioplayer.play()
