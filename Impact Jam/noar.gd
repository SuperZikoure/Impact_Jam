extends Sprite

var disp = 0
var yes = 0

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("character_switch") && disp == 1 && yes == 0:
		disp = 0
		yes = 1
	if Input.is_action_just_pressed("character_switch") && disp == 0 && yes == 0:
		disp = 1
		yes = 1
	if disp == 0:
		$".".hide()
	else :
		if disp == 1:
			$".".show()
	yes = 0

