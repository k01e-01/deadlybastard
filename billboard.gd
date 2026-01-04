extends Node3D

@export var lock_y := true          # true = Y-billboard, false = full billboard

func _process(_delta):
	# 1. Get the camera we want to face (the current 3-D viewport camera)
	var cam := get_viewport().get_camera_3d()
	if not is_instance_valid(cam):
		return

	# 2. Compute the desired forward direction
	var pos := global_position
	var cam_pos := cam.global_position

	look_at(cam_pos)
	rotation.x = 0
	rotation.z = 0
