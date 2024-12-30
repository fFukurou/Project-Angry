extends Node2D

const ANIMAL = preload("res://scenes/animal/animal.tscn")


@onready var animal_start: Marker2D = $AnimalStart



func _ready() -> void:
	SignalManager.on_animal_died.connect(add_animal)
	add_animal()
	
func _process(delta: float) -> void:
	pass
	
	

func add_animal() -> void:
	var animal = ANIMAL.instantiate()
	animal.position = animal_start.position
	self.add_child(animal)
