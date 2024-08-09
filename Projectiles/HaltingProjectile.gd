extends Node2D


const acceleration_y : float = 10.0;
var acceleration_coef : int = 1
var velocity_y : float = 0.0;

func _physics_process(delta):
	if (velocity_y > 200.0):
		acceleration_coef = -1
	elif (velocity_y < 0.0):
		acceleration_coef = 1
	velocity_y += acceleration_y * acceleration_coef
	self.position.y += velocity_y * delta
