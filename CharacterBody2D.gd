extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D
var speed = 100

func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	print(input_dir)
	velocity = input_dir * speed

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)
	
func _process(_delta):
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed
	
	if velocity.length() != 0:
		_animated_sprite.play("running")
	else:
		_animated_sprite.play("idle")
	

