extends Node2D

const ANIMAL = preload("res://scenes/animal/animal.tscn")
const MAIN = preload("res://scenes/main/main.tscn")

@onready var animal_start: Marker2D = $AnimalStart



func _ready() -> void:
	SignalManager.on_animal_died.connect(add_animal)
	add_animal()
	
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().change_scene_to_packed(MAIN)
	
	

func add_animal() -> void:
	var animal = ANIMAL.instantiate()
	animal.position = animal_start.position
	self.add_child(animal)
