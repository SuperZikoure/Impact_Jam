extends StaticBody2D

func _on_ActivationArea_body_entered(body):
	if body.get_name() != "Door":
		$AnimatedSprite.play("activated")
	pass

func _on_ActivationArea_body_exited(body):
	$AnimatedSprite.play("default")
	pass