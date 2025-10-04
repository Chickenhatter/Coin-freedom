extends Node2D



func _reay() -> void:
	$Path2D/PathFollow2D/AnimatedSprite2D.moving = true
	$Path2D/PathFollow2D/AnimatedSprite2D.move_speed = 1.0
	
func _physics_process(delta: float) -> void:
	const move_speed := 5.2
	$Path2D/PathFollow2D.progress += move_speed+delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://tHE STrt.tscn")
