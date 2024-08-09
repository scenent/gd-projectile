extends Node2D

@export var force : float = 0.4;

var velocity_y : float = 0.0

func _physics_process(delta):
	velocity_y += force
	self.position.y += velocity_y
