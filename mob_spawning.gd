extends Node2D

func _on_timer_timeout():
	spawn_mob()
	
	
	
func spawn_mob():
	var mob_spawn = preload("res://Mob/mob.tscn").instantiate()
	$Path2D/PathFollow2D.progress_ratio = randf()
	mob_spawn.global_position = $Path2D/PathFollow2D.global_position
	add_child(mob_spawn)









