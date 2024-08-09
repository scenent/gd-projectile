extends Node2D

const theta_min = (1.0 / 4.0 * PI)
const theta_max = (3.0 / 4.0 * PI)

@export var initial_theta : float = (1.0 / 4.0 * PI)

var theta : float = initial_theta
var theta_step_accel : float = 0.01
var theta_step : float = 0.0

var trigon_coef : float = 1.0

func _physics_process(delta):
	if (theta < theta_min):
		theta_step_accel = 0.01
		theta_step = 0.0
	elif (theta > theta_max):
		theta_step_accel = -0.01
		theta_step = 0.0
	theta_step += theta_step_accel
	theta += theta_step
	
	self.position.x = cos(theta) * trigon_coef
	self.position.y = sin(theta) * trigon_coef

	trigon_coef += 1.0
