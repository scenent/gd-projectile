extends Node2D

@export var speed : float = 500.0;

func _physics_process(delta):
	self.position.y += speed * delta
