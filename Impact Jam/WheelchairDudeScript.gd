extends KinematicBody2D

const SPEED = 150
var motion = Vector2()
var look = -1
var is_active = false

func _physics_process(delta):
	if !is_active:
		set_idle_anim()
		return
	
	if Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$AnimatedSprite.play("move_left")
		look = -1
	elif Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$AnimatedSprite.play("move_right")
		look = 1
	elif motion.x != 0:
		set_idle_anim()
		motion.x = 0
	move_and_slide(motion)
	pass

func set_idle_anim():
	if look == 1:
			$AnimatedSprite.play("idle_right")
	elif look == -1:
		$AnimatedSprite.play("idle_left")

func _on_AnimatedSprite_animation_finished():
	if !is_active:
		return
		
	if motion.x == 0:
		if randi() % 4 + 1 == 1:
			if look == 1:
				$AnimatedSprite.play("anim_right")
			elif look == -1:
				$AnimatedSprite.play("anim_left")
		else:
			if look == 1:
				$AnimatedSprite.play("idle_right")
			elif look == -1:
				$AnimatedSprite.play("idle_left")
		if randi() % 4 + 1 == 1:
			if look == 1:
				$AnimatedSprite.play("anim_right")
			elif look == -1:
				$AnimatedSprite.play("anim_left")
		else:
			if look == 1:
				$AnimatedSprite.play("idle_right")
			elif look == -1:
				$AnimatedSprite.play("idle_left")
