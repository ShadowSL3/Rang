extends Node3D
class_name Bodyer

func _ready():
	pass

func _process(delta): 
	if not get_parent() is RigidBody3D:
		printerr("RigidBody Is Not Set, Correctly")
	if get_parent() is RigidBody2D or RigidBody3D: 
		print("IS Node Parent")
