extends Node2D

var unlocked = 0

func _process(delta):
	if $Door/AnimatedSprite.get_animation() == "activated" && Input.is_action_just_pressed("ui_accept") && unlocked == 1:
		queue_free()
	pass

func _on_Key_key():
	unlocked = 1
	pass

func _on_KeyFloor2_key():
	unlocked = 1
	pass
