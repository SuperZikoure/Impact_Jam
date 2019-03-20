extends Node2D

signal key

func _ready():
	if $Key/AnimatedSprite.get_animation() == "activated" && Input.is_action_just_pressed("ui_accept"):
		emit_signal("key")
		queue_free()
	pass

func _on_Key_body_entered(body):
	if body.get_name() == "Character":
		$Key/AnimatedSprite.play("activated")
	pass

func _on_Key_body_exited(body):
	if body.get_name() == "Character":
		$Key/AnimatedSprite.play("activated")
	pass
