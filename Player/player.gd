extends CharacterBody2D

signal health_depleted
signal health_decrease

const DAMAGE_RATE = 5.0

var health = 100.0



func _ready():
	Global.player = self

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600
	move_and_slide()
	
	if Input.is_action_pressed("move_left"):
		%AnimatedSprite2D.flip_h = true
		%AnimatedSprite2D.play("run")
	elif Input.is_action_pressed("move_right"):
		%AnimatedSprite2D.flip_h = false
		%AnimatedSprite2D.play("run")
	elif Input.is_action_pressed("move_down") or Input.is_action_pressed("move_up"):
		%AnimatedSprite2D.play("run")
	else:
		%AnimatedSprite2D.play("idle")
		
	
	var overlapping_mobs = %Hurtbox.get_overlapping_bodies()
	if overlapping_mobs.size() > 0:
		health_decrease.emit()
		health -= DAMAGE_RATE * overlapping_mobs.size() * delta
		%Healthbar.value = health
		
		%AnimatedSprite2D.play("hit")
		
		print(%AnimatedSprite2D.get_animation())
		if health <= 0.0:
			health_depleted.emit()




 
