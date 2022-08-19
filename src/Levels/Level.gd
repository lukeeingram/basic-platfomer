extends Node2D

func _ready() -> void:
	var player : KinematicBody2D = get_node("Player")
	for enemy in get_node("Enemies").get_children():
		enemy.decide_direction(player.global_position)
