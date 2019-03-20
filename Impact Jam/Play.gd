extends TextureButton

func _pressed():
	var err = get_tree().change_scene("res://PreGame.tscn")
	
	if err != OK:
		print("Failed to load game scene")
