extends TextureButton

func _pressed():
	var err = get_tree().change_scene("res://Credits.tscn")
	
	if err != OK:
		print("Failed to load credits scene")
