extends Node3D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		$Debug.visible = true
	else:
		if event.is_action_pressed("ui_esc"):
			$Debug.visible = !visible
