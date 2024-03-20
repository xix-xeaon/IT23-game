extends CharacterBody2D

@export var speed = 200
@export var health = 2

func _physics_process(delta):
	var direction = global_position.direction_to(Global.player.global_position)
	velocity = direction * speed
	move_and_slide()

func take_damage():
	health -= 1
	
	if health == 0:
		queue_free()
