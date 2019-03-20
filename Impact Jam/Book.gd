extends Node2D

signal code

func _process(delta):
	if $Book/AnimatedSprite.get_animation() == "activated" && Input.is_action_just_pressed("ui_accept"):
		emit_signal("code")
		queue_free()
	pass

func _on_Book_body_entered(body):
	if body.get_name() == "Character":
		$Book/AnimatedSprite.play("activated")
	pass

func _on_Book_body_exited(body):
	if body.get_name() == "Character":
		$Book/AnimatedSprite.play("default")
	pass
