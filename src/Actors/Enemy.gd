extends "res://src/Actors/Actor.gd"
class_name Enemy

func _ready() -> void:
	set_physics_process(false)
	_velocity.x = -speed.x
	
func _physics_process(delta: float) -> void:
	var snap := Vector2.DOWN * 55.0
	_velocity.x *= -1 if is_on_wall() else 1
	_velocity.y = move_and_slide_with_snap(_velocity, snap, FLOOR_NORMAL).y
	
func kill() -> void:
	queue_free()

func decide_direction(player_global_position: Vector2) -> void:
	pass
