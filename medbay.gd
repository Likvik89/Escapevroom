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
	else:
		%Hallway.visible = false



func _on_doorway_button_down() -> void:
	
	medbay = false
	hallway = true
