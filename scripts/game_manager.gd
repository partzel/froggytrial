extends Node

var score: int = 0

func update_score(amount: int):
	score += amount
	print("score: " + str(score))
