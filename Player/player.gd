extends CharacterBody2D

signal health_depleted

const DAMAGE_RATE = 5.0

var health = 100.0

func _ready():
	Global.player = self

func _ready():
	Global.player = self

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600
	move_and_slide()
	
	var overlapping_mobs = %Hurtbox.get_overlapping_bodies()
	if overlapping_mobs.size() > 0:
		health -= DAMAGE_RATE * overlapping_mobs.size() * delta
		%Healthbar.value = health
		if health <= 0.0:
			health_depleted.emit()
