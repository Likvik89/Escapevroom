extends Node2D

var medbay = true
var hallway = false





func _process(delta):
	if medbay:
		%Medbay_doorway.visible = true
		%Medbay.visible = true
	else:
		%Medbay_doorway.visible = false
		%Medbay.visible = true
		pass
	if hallway:
		%Hallway.visible = true
		%Hallway_goback.visible = true
	else:
		%Hallway.visible = false
		%Hallway_goback.visible = false

func _on_hallway_goback_pressed() -> void:
	hallway = false
	medbay = true

func _on_medbay_doorway_pressed() -> void:
	medbay = false
	hallway = true
