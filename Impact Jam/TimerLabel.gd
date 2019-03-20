extends Label

var sec = 250

func _process(delta):
	if sec > 99:
		set_text(str(sec))
	elif sec > 9:
		set_text("0" + str(sec))
	else:
		set_text("00" + str(sec))
	if sec == 0:
		get_tree().change_scene("res://GameOver.tscn")
	pass

func _on_Timer_timeout():
	sec -= 1
	pass
