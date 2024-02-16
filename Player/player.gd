extends CharacterBody2D

const game_over_scene :PackedScene = preload("res://GameOver/GameOver.tscn")
var game_over_instance = game_over_scene.instantiate()

signal health_depleted

const DAMAGE_RATE = 5.0

var health = 100.0

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

func _on_health_depleted() -> void:
	add_child(game_over_instance) # Add to Player scene
