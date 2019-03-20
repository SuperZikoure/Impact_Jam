extends Control

func _ready():
	pass

func pause_game():
	get_tree().paused = true
	$PausePanel.show()
	pass

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		pause_game()
	pass
