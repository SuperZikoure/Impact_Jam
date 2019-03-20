extends TextureButton

func _pressed():
	var err = get_tree().change_scene("res://Game.tscn")
	
	if err != OK:
		print("Failed to load game scene")