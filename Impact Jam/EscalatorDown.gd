extends Area2D

var player_body

func _process(delta):
	if $sprite.get_animation() != "highlighted":
		return
	if Input.is_action_just_pressed("ui_down"):
		player_body.position = Vector2(player_body.position.x, player_body.position.y + 800)

func _on_Area2D_body_entered(body):
	player_body = body
	$sprite.play("highlighted")

func _on_Area2D_body_exited(body):
	$sprite.play("default")
