extends Node

var score: int = 0
@onready var score_label: Label = $ScoreLabel

func _ready():
	score_label.text = "score: " + str(score)

func update_score(amount: int):
	score += amount
	score_label.text = "score: " + str(score)
