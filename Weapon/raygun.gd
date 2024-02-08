extends Area2D

func _physics_process(delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)

func shoot():
	const BEAM = preload("res://Weapon/beam.tscn")
	var new_beam = BEAM.instantiate()
	new_beam.global_position = %shootingpoint.global_position
	new_beam.global_rotation = %shootingpoint.global_rotation
	%shootingpoint.add_child(new_beam)


func _on_timer_timeout():
	shoot()
