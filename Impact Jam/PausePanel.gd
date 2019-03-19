extends Panel

func _ready():
	pass

func resume_game():
	$".".hide()
	get_tree().paused = false
	pass

func _on_Button_pressed():
	resume_game()
	pass
