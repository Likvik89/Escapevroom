extends Node2D

var medbay = true
var hallway = false
var central_hall = false
var engineroom = false
var controlroom = false
var escapepod = false
var dead = false

#Opdaterer rummet efter hvor spilleren er
func _process(delta):
	#Viser de ting som er i medbay
	if medbay:
		%Medbay_doorway.visible = true
		%Medbay.visible = true
	else:
		%Medbay_doorway.visible = false
		%Medbay.visible = false
	#Viser de ting som er i hallway'en
	if hallway:
		%Hallway.visible = true
		%Hallway_goback.visible = true
		%Hallway_goforward.visible = true
	else:
		%Hallway.visible = false
		%Hallway_goback.visible = false
		%Hallway_goforward.visible = false
	#Viser de ting som er i den centrale hall
	if central_hall:
		%SpaceshipSal.visible = true
		%Sal_goback.visible = true
		%Controlroom.visible = true
		%Engineroom.visible = true
	else:
		%SpaceshipSal.visible = false
		%Sal_goback.visible = false
		%Controlroom.visible = false
		%Engineroom.visible = false
	#viser skibets motor
	if engineroom:
		%Engine.visible = true
	else:
		%Engine.visible = false

func _on_hallway_goback_pressed() -> void:
	hallway = false
	medbay = true

func _on_medbay_doorway_pressed() -> void:
	medbay = false
	hallway = true

func _on_hallway_goforward_pressed() -> void:
	central_hall = true
	hallway = false

func _on_sal_goback_pressed() -> void:
	central_hall = false
	hallway = true


func _on_engineroom_pressed() -> void:
	central_hall = false
	engineroom = true
