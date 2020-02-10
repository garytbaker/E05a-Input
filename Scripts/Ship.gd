extends KinematicBody2D


func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		position.x = position.x - 10
	if Input.is_action_pressed("right"):
		position.x = position.x + 10
	if Input.is_action_pressed("up"):
		position.y = position.y - 10
	if Input.is_action_pressed("down"):
		position.y = position.y + 10
