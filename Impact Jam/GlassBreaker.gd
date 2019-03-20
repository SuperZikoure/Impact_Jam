extends Node2D

signal glass_breaker

var broken = 0

func _process(delta):
	if $GlassBreaker/AnimatedSprite.get_animation() == "activated" && Input.is_action_just_pressed("ui_accept"):
		broken = 1
		$GlassBreaker/AnimatedSprite.play("broken")
		emit_signal("glass_breaker")
	pass

func _on_GlassBreaker_body_entered(body):
	if body.get_name() == "Character" && broken == 0:
		$GlassBreaker/AnimatedSprite.play("activated")
	pass

func _on_GlassBreaker_body_exited(body):
	if body.get_name() == "Character" && broken == 0:
		$Key/AnimatedSprite.play("default")
	pass
