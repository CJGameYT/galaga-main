extends Area2D

@export var speed := 150

# Called when the node enters the scene tree for the first time.
func start(pos):
	position = pos

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += speed * delta




func _on_visible_on_screen_enabler_2d_screen_exited() -> void:
	queue_free()


func _on_area_entered(area: Area2D) -> void:
	if area.name == "player":
		queue_free()
