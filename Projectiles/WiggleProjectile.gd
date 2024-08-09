extends Node2D

@export var speed : float = 200.0;

var theta : float = 0.0;
const sine_coef : float = 50.0;

func _physics_process(delta):
	self.position.x = sin(theta) * sine_coef
	self.position.y += speed * delta
	theta += 0.1
