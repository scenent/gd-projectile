extends Node2D

const SCENE_NAMES = [
	"Basic Projectile",
	"Euler Projectile",
	"Circular Projectile",
	"Wiggle Projectile",
	"Halting Projectile",
	"Ranged Circular Halting Projectile"
]

const SCENES = [
	preload("res://Projectiles/BasicProjectile.tscn"),
	preload("res://Projectiles/EulerProjectile.tscn"),
	preload("res://Projectiles/CircularProjectile.tscn"),
	preload("res://Projectiles/WiggleProjectile.tscn"),
	preload("res://Projectiles/HaltingProjectile.tscn"),
	preload("res://Projectiles/RangedCircularHaltingProjectile.tscn")
]

var current_scene_index = 0
var current_scene : PackedScene = null

func _ready():
	SetCurrentProjectileScn()

func SetCurrentProjectileScn():
	current_scene = SCENES[current_scene_index]
	$curProjectileNameLabel.text = SCENE_NAMES[current_scene_index]

func _on_next_btn_pressed():
	current_scene_index += 1
	if (current_scene_index == SCENES.size()):
		current_scene_index = 0
	SetCurrentProjectileScn()
	for child in $projectiles.get_children():
		$projectiles.remove_child(child)

func _on_fire_timer_timeout():
	if (current_scene != null):
		var node = current_scene.instantiate()
		$projectiles.add_child(node)
		$curProjectileCountLabel.text = "Projectile Count : " + str($projectiles.get_child_count())
