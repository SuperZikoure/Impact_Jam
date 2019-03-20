extends Node2D

signal code

func _process(delta):
	if $Code/AnimatedSprite.get_animation() == "activated" && Input.is_action_just_pressed("ui_accept"):
		emit_signal("code")
		queue_free()
	pass

func _on_Code_body_entered(body):
	if body.get_name() == "WheelchairDude":
		$Code/AnimatedSprite.play("activated")
	pass

func _on_Code_body_exited(body):
	if body.get_name() == "WheelchairDude":
		$Code/AnimatedSprite.play("default")
	pass