extends CharacterBody2D

@export var health_enemy = 2
@export var speed = 200

func _physics_process(delta):
	var direction = global_position.direction_to(Global.player.global_position)
	velocity = direction * speed
	move_and_slide()

func take_damage():
	health_enemy -= 1
	if health_enemy == 0:
		queue_free()
