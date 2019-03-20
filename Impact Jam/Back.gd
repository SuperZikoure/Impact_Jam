extends TextureButton

func _process(delta):
	if get_tree().paused == false:
		$".".hide()
	else:
		$".".show()

func _pressed():
	if get_tree().paused == true:
		get_tree().paused = false
	var err = get_tree().change_scene("res://MainMenu.tscn")
	if err != OK:
		print("Failed to load game scene")
