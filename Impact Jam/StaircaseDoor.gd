extends Node2D

func _on_Area2D_body_entered(body):
	$Area2D/sprite.play("highlighted")
	print(body.get_name())

func _on_Area2D_body_exited(body):
	$Area2D/sprite.play("default")
