extends Node2D

@onready var anim = $AnimatedSprite2D

func ready():
	anim.play("Grabers")
	
func _reay() -> void:
	$Path2D/PathFollow2D/Area2D/CollisionShape2D.moving = true
	$Path2D/PathFollow2D/Area2D/CollisionShape2D.move_speed = 1.0
	
func _physics_process(delta: float) -> void:
	const move_speed := 4.0
	$Path2D/PathFollow2D.progress += move_speed+delta



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://tHEHAND.tscn")
