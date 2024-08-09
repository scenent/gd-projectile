extends Node2D

var theta : float = 0.0;
var circular_coef : float = 1.0;

func _physics_process(delta):
	self.position.x = cos(theta) * circular_coef
	self.position.y = sin(theta) * circular_coef
	theta += 0.1
	circular_coef += 1.0
