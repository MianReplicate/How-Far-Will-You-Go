extends CharacterBody2D


const  speed_modifier = 900
const SPEED = 300

# Called when the node enters the scene tree for the first time.
func _double_jump() -> void:
	if Input.is_action_just_pressed("ui_shift"):
		
		
	


		var direction := Input.get_axis("ui_left", "ui_right")
		if direction:
			velocity.x = direction * (SPEED+ speed_modifier)
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED+speed_modifier)
