extends Node2D


func _on_timer_timeout():
	spawn_mob()
	
	
	
func spawn_mob():
	global_position = Global.player.global_position
	var mob_spawn = preload("res://Mob/mob.tscn").instantiate()
	$Path2D/PathFollow2D.progress_ratio = randf()
	mob_spawn.global_position = $Path2D/PathFollow2D.global_position
	get_parent().add_child(mob_spawn)









