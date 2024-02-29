extends CharacterBody2D

@export var speed = 200

func _physics_process(delta):
	var direction = global_position.direction_to(Global.player.global_position)
	velocity = direction * 300.0
	move_and_slide()
