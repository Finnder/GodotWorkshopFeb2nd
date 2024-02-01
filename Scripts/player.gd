extends CharacterBody2D

const GRAVITY : int = 350

@export var flap_force : int = -250

func _physics_process(delta):

	if Input.is_action_just_pressed("flap"):
		velocity.y = flap_force

	velocity.y += GRAVITY * delta
	move_and_slide()

	# Rotate the bird based on its velocity
	rotation = lerp(rotation, velocity.y / 1000, 0.1)

