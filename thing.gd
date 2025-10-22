extends CharacterBody2D

@export var speed = 100
var player_position
var target_position
@onready var player = get_parent().get_parent().get_node("Players")

func _physics_process(delta):
	player_position = player.position
	if target_position = (player_position) > 3:
		
