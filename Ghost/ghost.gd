extends CharacterBody2D

func _ready():
	%AnimatedSprite2D.play("idle")

func _physics_process(delta):
	var direction = global_position.direction_to(Global.player.global_position)
	velocity = direction * 350
	move_and_slide()
