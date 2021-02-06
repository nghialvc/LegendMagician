extends KinematicBody2D

var speed = 200
var gravity = 800
var jumpHigh = 400
var vel = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	vel.x = 0
	if Input.is_action_pressed("ui_left"):
		vel.x -= speed
	if Input.is_action_pressed("ui_right"):
		vel.x += speed
	if Input.is_action_pressed("ui_up") and is_on_floor():
		vel.y -= jumpHigh
	if Input.is_action_pressed("ui_down"):
		vel.x += speed
	vel = move_and_slide(vel, Vector2.UP)
	vel.y += gravity*delta
