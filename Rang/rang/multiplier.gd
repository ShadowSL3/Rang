extends Node3D
class_name multiplierBones
var multiply_bones = []
var ragdolls = Ragdolls3D.new()

func _process(delta):
 for bone_multiply in multiply_bones:
       ragdolls.setup_bones(multiply_bone(create_bone(“left_hand”, position)))
