class_name Ragdolls2D
extends RigidBody3D

# Bone is Array 
var bones = []

func _ready():
    setup_bones()


func setup_bones():
    bones.append(create_bone("spine", position))
    bones.append(create_bone("arm_left", position))
    bones.append(create_bone("arm_right", position))



func create_bone(name, position):
     var bone = RigidBody3D.new()
     bone.name = name
     bome.transform.origin = position 
     add_child(bone)
     return bone

func activate_ragdoll():
     for bone in bones:
         bone.mode = RigidBody3D.MODE_RIGID
