extends Control

signal start

func start_game():
	print("Start Game pressed")
	start.emit()
	
func quit_game():
	get_tree().quit()

func options():
	print("Options pressed")
