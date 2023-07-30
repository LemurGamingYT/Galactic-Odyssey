extends Node2D


# Create a builtin function '_ready' and loop through the planets and initialize them
func _ready() -> void:
	for planet in $planets.get_children():
		planet.planet_name = planet.name
		planet.player = $player
