extends Node2D
func _ready():
	# Habilita la captura de clics en la escena.
	set_process_input(true)

func _input(event):
	# Verifica si el evento es un clic del botón izquierdo del ratón.
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://scenes/game.tscn")
