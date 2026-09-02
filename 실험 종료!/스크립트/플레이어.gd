extends CharacterBody2D

@export var speed := 300.0

@onready var anim = $AnimatedSprite2D
func _physics_process(delta):
	var input_dir = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_dir * speed
	
	if velocity.length() > 0:
		anim.play("walk")
	else:
		anim.stop()
		
	move_and_slide()
