extends KinematicBody

export (int) var speed = 14

var velocity = Vector3()

func get_input():
	velocity = Vector3()
	if Input.is_action_pressed("right"):
		velocity.x += 1
		rotation_degrees.y = 180
	if Input.is_action_pressed("left"):
		velocity.x -= 1
		rotation_degrees.y = 0
	if Input.is_action_pressed("down"):
		velocity.z += 1
		rotation_degrees.y = 90
	if Input.is_action_pressed("up"):
		velocity.z -= 1
		rotation_degrees.y = 270
	velocity = velocity.normalized() * speed

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)

