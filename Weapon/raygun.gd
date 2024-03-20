extends Area2D




func _physics_process(delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)
	if global_rotation_degrees <= -90 or global_rotation_degrees >= 90:
		%Pistol.flip_v = true
	else:
		%Pistol.flip_v = false

func shoot():
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		const BEAM = preload("res://Weapon/beam.tscn") 
		var new_beam = BEAM.instantiate()
		new_beam.global_position = %shootingpoint.global_position
		new_beam.global_rotation = %shootingpoint.global_rotation
		%shootingpoint.add_child(new_beam)
		%WeaponSound.play()

func _on_timer_timeout():
	shoot()
