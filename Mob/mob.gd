extends CharacterBody2D

@export var speed = 0

func _ready():
	Mobtarget.player

func _physics_process(delta):
	var direction = global_position.direction_to(Mobtarget.player.global_position)
	velocity = direction * speed
	move_and_slide()
