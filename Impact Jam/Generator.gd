extends Node2D

signal generator

var activated = 0

func _process(delta):
	if $Generator/AnimatedSprite.get_animation() == "activated" && Input.is_action_just_pressed("ui_accept"):
		activated = 1
		emit_signal("generator")
	pass

func _on_Generator_body_entered(body):
	if body.get_name() == "Character" && activated == 0:
		$Generator/AnimatedSprite.play("activated")
	pass

func _on_Generator_body_exited(body):
	if body.get_name() == "Character":
		$Generator/AnimatedSprite.play("default")
	pass
