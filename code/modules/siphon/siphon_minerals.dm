
ABSTRACT_TYPE(/datum/siphon_mineral)
/datum/siphon_mineral
	///Name of mineral, can be used for the player-viewable settings compendium
	var/name = "Youshouldn'tseemium"
	///Shows whether this outcome should be indexed in the player-viewable settings compendium
	var/indexed = 1
	///How many extraction ticks (process iterations times resonator intensity) are required to produce this resource
	var/tick_req = 30
	///Target resonance horizontal strength, positive or negative based on relative X position of resonator multiplied by its power.
	var/x_torque = null
	///Target resonance vertical strength, positive or negative based on relative Y position of resonator multiplied by its power.
	var/y_torque = null
	///Target resonance shear, always positive; when positive and negative resonance cancel each other out, shear is the differential
	var/shear = null
	///Sensitivity window for target resonances; a higher window is more forgiving of imprecise settings
	var/sens_window = 0
	///Stuff to produce when parameters are successfully met
	var/product = /obj/item/raw_material/scrap_metal
	///Setup guide, formatted as a list of strings describing individual resonator positions and intensities
	var/list/setup_guide = null

	New()
		..()

//A note: Parameter requirements will be totally ignored if not explicitly set.

/datum/siphon_mineral/rock
	name = "Rock"
	tick_req = 8
	x_torque = 16
	y_torque = 0
	shear = 0
	sens_window = 2
	product = /obj/item/raw_material/rock
	setup_guide = list(
		"Type-AX Resonator, Position F4, 2 Intensity<br>"
	)

/datum/siphon_mineral/mauxite
	name = "Mauxite"
	x_torque = 48
	y_torque = -16
	shear = 8
	sens_window = 7
	product = /obj/item/raw_material/mauxite
	setup_guide = list(
		"Type-AX Resonator, Position F4, 4 Intensity<br>",
		"Type-AX Resonator, Position G4, 2 Intensity<br>",
		"Type-AX Resonator, Position E3, 3 Intensity<br>",
		"Type-AX Resonator, Position F6, 1 Intensity<br>"
	)

/datum/siphon_mineral/molitz
	name = "Molitz"
	x_torque = -16
	y_torque = -48
	shear = 8
	sens_window = 7
	product = /obj/item/raw_material/molitz
	setup_guide = list(
		"Type-AX Resonator, Position E3, 4 Intensity<br>",
		"Type-AX Resonator, Position E2, 4 Intensity<br>",
		"Type-AX Resonator, Position D7, 2 Intensity<br>"
	)

/datum/siphon_mineral/pharosium
	name = "Pharosium"
	x_torque = 16
	y_torque = 0
	shear = 40
	sens_window = 7
	product = /obj/item/raw_material/pharosium
	setup_guide = list(
		"Type-AX Resonator, Position F6, 1 Intensity<br>",
		"Type-AX Resonator, Position G5, 2 Intensity<br>",
		"Type-AX Resonator, Position E3, 3 Intensity<br>"
	)

/datum/siphon_mineral/char
	name = "Char"
	tick_req = 15
	x_torque = -16
	y_torque = -4
	shear = 16
	sens_window = 5
	product = /obj/item/raw_material/char
	setup_guide = list(
		"Type-AX Resonator, Position B7, 2 Intensity<br>",
		"Type-AX Resonator, Position G2, 1 Intensity<br>",
		"Type-AX Resonator, Position D4, 2 Intensity<br>"
	)

/datum/siphon_mineral/martian
	name = "Viscerite"
	x_torque = 20
	y_torque = 16
	shear = 8
	sens_window = 3
	product = /obj/item/raw_material/martian
	setup_guide = list(
		"Type-AX Resonator, Position E7, 3 Intensity<br>",
		"Type-AX Resonator, Position E2, 1 Intensity<br>",
		"Type-AX Resonator, Position G6, 3 Intensity<br>",
		"Type-AX Resonator, Position F4, 1 Intensity<br>"
	)

/datum/siphon_mineral/claretine
	name = "Claretine"
	tick_req = 40
	x_torque = 32
	y_torque = -4
	shear = 20
	sens_window = 4
	product = /obj/item/raw_material/claretine
	setup_guide = list(
		"Type-AX Resonator, Position C2, 1 Intensity<br>",
		"Type-AX Resonator, Position E2, 1 Intensity<br>",
		"Type-AX Resonator, Position F4, 4 Intensity<br>",
		"Type-AX Resonator, Position G6, 1 Intensity<br>"
	)

/datum/siphon_mineral/bohrum
	name = "Bohrum"
	tick_req = 40
	x_torque = -16
	y_torque = -16
	shear = 24
	sens_window = 4
	product = /obj/item/raw_material/bohrum
	setup_guide = list(
		"Type-AX Resonator, Position C2, 2 Intensity<br>",
		"Type-AX Resonator, Position D3, 2 Intensity<br>",
		"Type-AX Resonator, Position G6, 1 Intensity<br>",
		"Type-AX Resonator, Position H7, 1 Intensity<br>"
	)

/datum/siphon_mineral/fibrilith
	name = "Fibrilith"
	x_torque = 0
	y_torque = 0
	shear = 12
	sens_window = 1
	product = /obj/item/raw_material/fibrilith

	New()
		src.shear = rand(8,16)
		..()

/datum/siphon_mineral/cobryl
	name = "Cobryl"
	x_torque = -96
	shear = 4
	sens_window = 9
	product = /obj/item/raw_material/cobryl

/datum/siphon_mineral/syreline
	name = "Syreline"
	tick_req = 50
	x_torque = 88
	shear = 6
	sens_window = 1
	product = /obj/item/raw_material/syreline

/datum/siphon_mineral/erebite
	name = "Erebite"
	tick_req = 90
	x_torque = 6
	y_torque = -22
	shear = 33
	sens_window = 2
	product = /obj/item/raw_material/erebite

	New()
		src.shear = rand(30,40)
		..()

/datum/siphon_mineral/cerenkite
	name = "Cerenkite"
	tick_req = 60
	x_torque = -24
	y_torque = 8
	shear = 16
	sens_window = 3
	product = /obj/item/raw_material/cerenkite

	New()
		src.shear = rand(8,24)
		..()

/datum/siphon_mineral/koshmarite
	name = "Koshmarite"
	tick_req = 40
	shear = 58
	product = /obj/item/raw_material/eldritch

	New()
		src.shear = rand(57,60)
		..()

/datum/siphon_mineral/gemstone
	name = "Gemstone"
	tick_req = 150
	x_torque = 0
	y_torque = 0
	shear = 64
	product = /obj/item/raw_material/gemstone

/datum/siphon_mineral/uqill
	name = "Uqill"
	tick_req = 190
	shear = 54
	sens_window = 2
	product = /obj/item/raw_material/uqill

/datum/siphon_mineral/telecrystal
	name = "Telecrystal"
	tick_req = 200
	shear = 63
	product = /obj/item/raw_material/telecrystal

	New()
		src.tick_req = rand(200,230)
		src.shear = rand(61,63)
		..()

//shear of 65 or higher should do Bad Things unless precisely set to this number
/datum/siphon_mineral/starstone
	name = "Starstone"
	tick_req = 1616
	shear = 110
	product = /obj/item/raw_material/starstone

	New()
		src.tick_req = rand(100,120) * 10
		src.shear = rand(106,115)
		..()
