extends CharacterBody2D



func _ready():
	Mobtarget.player

func _physics_process(delta):
	var direction = global_position.direction_to(Mobtarget.player.global_position)
	velocity = direction * 300.0
	move_and_slide()
