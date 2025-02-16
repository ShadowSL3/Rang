extends RigidBody3D
class_name Ragdolls3D
# Bone is Array 
var bones = []
func _ready():
	setup_bones()
	activate_ragdoll(40, BoxShape3D.new())


func setup_bones():
	bones.append(create_bone("spine", position))
	bones.append(create_bone("arm_left", position))
	bones.append(create_bone("arm_right", position))
	bones.append(create_bone("right_foot", position))
func create_bone(name, position: Vector3):
	var bone = RigidBody3D.new()
	bone.name = name
	bone.transform.origin = position 
	add_child(bone)
	return bone

func activate_ragdoll(size: int, shape:Shape3D):
	var collisionShape = CollisionShape3D.new()
	collisionShape.translate(Vector3(0, 5,0))
	collisionShape.shape = shape
	get_tree().debug_collisions_hint = true
	add_child(collisionShape)
