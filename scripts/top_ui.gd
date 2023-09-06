extends TextureRect

@onready var score_label = $MarginContainer/HBoxContainer/score_label
@onready var counter_label = $MarginContainer/HBoxContainer/counter_label
@onready var moves_label = $MarginContainer/HBoxContainer/moves_label

var current_score = 0
var current_count = 0
var current_moves = 0

func add_score(score):
	current_score += score
	score_label.text = str(current_score)


func _on_timer_timeout():
	current_count += 1
	counter_label.text = str(current_count)

func get_current_count():
	return current_count

func set_moves(moves):
	current_moves = moves
	moves_label.text = str(current_moves)

func get_score():
	return current_score
	
func reset():
	current_score = 0
	current_count = 0
	current_moves = 0 
