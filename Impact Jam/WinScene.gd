extends Control

func _ready():
	pass

func _on_Button_pressed():
	var n_err = get_tree().change_scene("res://MainMenu.tscn")
	
	if n_err != OK:
		print("Couldn't load MainMenu.tscn")
