extends TextureFrame

func _ready():
	get_node("TextureButtonPlayAgain").connect("pressed",self,"_on_button_play_again_pressed")
	get_node("TextureButtonExit").connect("pressed",self,"_on_button_exit_pressed")

func _on_button_play_again_pressed():
    get_tree().change_scene("res://scenes/Floor.xml")

func _on_button_exit_pressed():
	get_tree().set_auto_accept_quit(false)