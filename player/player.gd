extends CharacterBody2D

class_name Player


# Set the speed and rotation speed of the player/spaceship
@export var rotation_speed: float = .05
@export var speed: float = 100.0


# Set the health of the player/spaceship
var health: int = 100

# Set the size of the player/spaceship
var size: float = 1.0


# Set the player's starting materials
var titanium: int = 0
var platinum: int = 0
var silicon: int = 0
var nickel: int = 0
var iron: int = 0
var gold: int = 0


# Create the builtin function '_physics_process' that runs every frame
func _physics_process(delta: float) -> void:
	# Get the key presses
	if Input.is_action_pressed('left'):
		rotation -= rotation_speed
	
	if Input.is_action_pressed('right'):
		rotation += rotation_speed
	
	if Input.is_action_pressed('up'):
		position += Vector2(speed * sin(rotation), -speed * cos(rotation)) * delta
	
	if Input.is_action_pressed('down'):
		position -= Vector2(speed * sin(rotation), -speed * cos(rotation)) * delta
	
	# Apply the movements to the player/spaceship
	move_and_slide()
	
	# Set the size of the player/spaceship
	scale = Vector2(size, size)
