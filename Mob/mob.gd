extends CharacterBody2D

@export var speed = 300

func _physics_process(delta):
	var direction = global_position.direction_to(Global.player.global_position)
	velocity = direction * speed 
	move_and_slide()
