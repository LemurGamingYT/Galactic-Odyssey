extends StaticBody2D

class_name Planet


# Set the defaults of the 'Planet' class
var planet_name: String
var player: Player


# Create a builtin function '_ready'
func _ready() -> void:
	# Set a random scale
	var planet_scale: int = randi_range(1, 5)
	scale = Vector2i(planet_scale, planet_scale)
