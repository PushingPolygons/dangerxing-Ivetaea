extends KinematicBody

export (int) var speed = 25

var velocity = Vector3()

var timeElapsed:= 0.0
var speedX: = 0.00
var speedZ: = 0.00


func _physics_process(_delta):
	timeElapsed += 1
	if(timeElapsed == 70):
		speedX = (randi() % 180 - 90)
		speedZ = (randi() % 180 - 90)
		if(speedX > speedZ and speedX > 0):
			rotation_degrees.y = 90
		if(speedZ > speedX and speedZ > 0):
			rotation_degrees.y = 0
		if(speedX < speedZ and speedX < 0):
			rotation_degrees.y = -90
		if(speedZ < speedX and speedZ < 0):
			rotation_degrees.y = 180
		timeElapsed += randi() % 40
	if(timeElapsed >70):
		velocity.x = speedX / 7
		velocity.z = speedZ / 7
	if(timeElapsed > 130):
		velocity.x = 0
		velocity.y = 0
		timeElapsed = 0
	#print(timeElapsed)
		
	velocity = move_and_slide(velocity)
	velocity = Vector3()
