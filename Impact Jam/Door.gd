extends StaticBody2D

func _process(delta):
	if $AnimatedSprite.get_animation() == "activated" && Input.is_action_just_pressed("ui_accept"):
		queue_free()
	pass

func _on_ActivationArea_body_entered(body):
	if body.get_name() != "Door":
		$AnimatedSprite.play("activated")
	pass

func _on_ActivationArea_body_exited(body):
	$AnimatedSprite.play("default")
	pass
