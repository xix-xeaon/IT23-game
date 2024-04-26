extends Node2D






func _on_player_health_depleted():
	get_tree().change_scene_to_file("res://GameOver/GameOver.tscn")
