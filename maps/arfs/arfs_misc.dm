// WINDOWS

/obj/structure/window/reinforced/full
	dir = 5
	icon_state = "fwindow"
	maxhealth = 60

/obj/structure/window/reinforced/polarized/full
	dir = 5
	icon_state = "fwindow"
	maxhealth = 60


//
// Holodorms
//
/obj/machinery/computer/HolodeckControl/holodorm
	name = "Don't use this one!!!"
	powerdown_program = "Off"
	default_program = "Off"

	//Smollodeck
	active_power_usage = 500
	item_power_usage = 100

	supported_programs = list(
	"Off"			= new/datum/holodeck_program(/area/holodeck/holodorm/source_off),
	"Basic Dorm"	= new/datum/holodeck_program(/area/holodeck/holodorm/source_basic),
	"Table Seating"	= new/datum/holodeck_program(/area/holodeck/holodorm/source_seating),
	"Beach Sim"		= new/datum/holodeck_program(/area/holodeck/holodorm/source_beach),
	"Desert Area"	= new/datum/holodeck_program(/area/holodeck/holodorm/source_desert),
	"Snow Field"	= new/datum/holodeck_program(/area/holodeck/holodorm/source_snow),
	"Flower Garden"	= new/datum/holodeck_program(/area/holodeck/holodorm/source_garden),
	"Space Sim"		= new/datum/holodeck_program(/area/holodeck/holodorm/source_space),
	"Boxing Ring"	= new/datum/holodeck_program(/area/holodeck/holodorm/source_boxing)
	)

/obj/machinery/computer/HolodeckControl/holodorm/one
	name = "dorm one holodeck control"
	projection_area = /area/crew_quarters/sleep/Dorm_1/holo

/obj/machinery/computer/HolodeckControl/holodorm/three
	name = "dorm three holodeck control"
	projection_area = /area/crew_quarters/sleep/Dorm_3/holo

/obj/machinery/computer/HolodeckControl/holodorm/five
	name = "dorm five holodeck control"
	projection_area = /area/crew_quarters/sleep/Dorm_5/holo

/obj/machinery/computer/HolodeckControl/holodorm/seven
	name = "dorm seven holodeck control"
	projection_area = /area/crew_quarters/sleep/Dorm_7/holo



//
// Copied from tether_turfs.dm
//

//Simulated
/turf/simulated/open/virgo3b
	edge_blending_priority = 0.5 //Turfs which also have e_b_p and higher than this will plop decorative edges onto this turf
/turf/simulated/open/virgo3b/New()
	..()
	if(outdoors)
		SSplanets.addTurf(src)

/turf/simulated/floor
/turf/simulated/floor/virgo3b/New()
	..()
	if(outdoors)
		SSplanets.addTurf(src)


