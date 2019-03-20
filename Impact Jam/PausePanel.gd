extends Panel

func _ready():
	pass

func resume_game():
	$".".hide()
	get_tree().paused = false

func _on_Button_pressed():
	resume_game()


func _on_Button2_pressed():
	var err = get_tree().change_scene("res://WinScene.tscn")
	
	if err != OK:
		print("Failed to load game scene")
	else:
		resume_game()
