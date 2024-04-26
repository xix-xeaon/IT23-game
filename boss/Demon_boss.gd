extends CharacterBody2D

@onready var sprite_left = $AnimatedSprite_left  #used when the mob is moving to the left 
@onready var sprite_right = $AnimatedSprite_right #used when the mob is moving to the right 

@export var speed = 300


func _physics_process(delta):
	var direction = global_position.direction_to(Global.player.global_position)
	velocity = direction * speed 
	move_and_slide()
	
# Animtionsprite
	if direction.x > 0.1: #mob moving to the right
		sprite_right.play("moving_r")
		sprite_right.show() #Shows the right sprite when moving to the right
		sprite_left.hide() #hidding the left sprite
	elif direction.x <-0.1: #mob moving to the left
		sprite_left.play("moving_l")
		sprite_left.show() #Shows the right sprite when moving to the left
		sprite_right.hide() #hides the right sprite
		
