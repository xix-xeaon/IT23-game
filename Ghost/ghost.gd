extends CharacterBody2D

@export var health = 3

func _physics_process(delta):
	var direction = global_position.direction_to(Global.player.global_position)
	velocity = direction * 350
	move_and_slide()

func take_damage():
	health -= 1
	
	if health == 0:
		queue_free()
