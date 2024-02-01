extends Node

func play_sound(file_path: String, parent: Node = null) -> void:
	if file_path != null:
		if parent == null:
			parent = get_tree().current_scene # Get the root node of the scene tree
		
		var sound = load(file_path)
		
		# Create 'AudioStreamPlayer' node
		var audioplayer = AudioStreamPlayer.new()
		
		# Set sound
		audioplayer.stream = sound
		
		# Connect 'finished' signal and queue_free
		audioplayer.finished.connect(Callable(audioplayer, "queue_free"))
		
		# Create and play the sound
		parent.add_child(audioplayer)
		audioplayer.play()
