extends TextureButton

func _process(delta):
	if get_tree().paused == false:
		$".".hide()
	else:
		$".".show()

func _pressed():
	if get_tree().paused == true:
		get_tree().paused = false