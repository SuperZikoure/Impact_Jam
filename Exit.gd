extends Area2D

var open = 0

func _on_Generator_generator():
	open = 1
	pass

func _on_Exit_body_entered(body):
	if open == 1 && body.get_name() == "WheelchairDude":
		get_tree().change_scene("res://WinScene.tscn")
	pass
