extends CharacterBody2D

const move_speed = 400

func _physics_process(delta):
	if Input.is_action_pressed("위로"):
		velocity.y = -move_speed
		print("test up")
	if Input.is_action_pressed("아래로"):
		velocity.y = +move_speed
	if Input.is_action_pressed("왼쪽으로"):
		velocity.x = -move_speed
	if Input.is_action_pressed("오른쪽으로"):
		velocity.x = +move_speed

	if Input.is_action_just_released("위로"):
		velocity.y = 0
	if Input.is_action_just_released("아래로"):
		velocity.y = 0
	if Input.is_action_just_released("왼쪽으로"):
		velocity.x = 0
	if Input.is_action_just_released("오른쪽으로"):
		velocity.x = 0
		
	if position.x < 380:
		position.x = 380
	elif position.x > 650:
		position.x = 650
		
	move_and_slide()
