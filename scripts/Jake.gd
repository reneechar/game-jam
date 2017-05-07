extends KinematicBody2D

export var MOTION_SPEED = 140
var RayNode

var IDLE_SPEED = 10
var JakeAnimNode
var anim = ""
var animNew = ""

func _ready():
	set_fixed_process(true)
	
	RayNode = get_node("RayCastDragon")
	JakeAnimNode = get_node("AnimatedSpriteDragon")
	
func _fixed_process(delta):
	if is_colliding():
		
		
		get_collider().free()

	
	var motion = Vector2()
	
	# motion
	
	if (Input.is_action_pressed("ui_up")):
		motion += Vector2(0,-1)
		RayNode.set_rotd(180)
	if (Input.is_action_pressed("ui_down")):
		motion += Vector2(0,1)
		RayNode.set_rotd(0)
	if (Input.is_action_pressed("ui_left")):
		motion += Vector2(-1,0)
		RayNode.set_rotd(-90)	
	if (Input.is_action_pressed("ui_right")):
		motion += Vector2(1,0)
		RayNode.set_rotd(90)
		
	motion = motion.normalized()*MOTION_SPEED*delta
	move(motion)
	
	#animations
	
	if (motion.length() > IDLE_SPEED*0.09):
		if (Input.is_action_pressed("ui_left")):
			anim = "walk_l"
		if (Input.is_action_pressed("ui_right")):
			anim = "walk_r"
		if (Input.is_action_pressed("ui_up")):
			anim = "walk_u"
		if (Input.is_action_pressed("ui_down")):
			anim = "walk_d"
	else:
		if (RayNode.get_rotd() == 180): 
			anim = "idle_u"
		if (RayNode.get_rotd() == 0):
			anim = "idle_d"
		if (RayNode.get_rotd() == -90):
			anim = "idle_l"
		if (RayNode.get_rotd() == 90):
			anim = "idle_r"
	
	if anim != animNew:
		animNew = anim
		JakeAnimNode.play(anim)
		
	