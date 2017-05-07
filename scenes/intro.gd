extends TextureFrame

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var scene = load("res://scenes/Floor.xml")
var node = scene.instance()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("TextureButtonStart").connect("pressed",self,"_on_button_start_pressed")
	get_node("TextureButtonExit").connect("pressed",self,"_on_button_exit_pressed")
	pass
	
func _on_button_start_pressed():
    get_tree().change_scene("res://scenes/Floor.xml")

func _on_button_exit_pressed():
	get_tree().set_auto_accept_quit(false)