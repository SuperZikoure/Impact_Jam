extends Control

func _ready():
	pass

func pause_game():
	get_tree().paused = true
	$pause_popup.show()
	pass

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		pause_game()
	pass

func _on_pause_button_pressed():
	pause_game()
	pass
