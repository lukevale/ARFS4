//Normal map defs
#define Z_LEVEL_ENDEAVOR_ONE			1
#define Z_LEVEL_ENDEAVOR_TWO			2
#define Z_LEVEL_ENDEAVOR_THREE			3
#define Z_LEVEL_ENDEAVOR_FOUR			4
#define Z_LEVEL_ENDEAVOR_FIVE			5
#define Z_LEVEL_CENTCOM					6
#define Z_LEVEL_SHIPS					7
#define Z_LEVEL_MISC					8




#define Z_LEVEL_BOTTOM_DECK				Z_LEVEL_ENDEAVOR_ONE
#define Z_LEVEL_TOP_DECK				Z_LEVEL_ENDEAVOR_FIVE

/datum/map/endeavor
	name = "Endeavor"
	full_name = "ARFS Endeavor"
	path = "endeavor"

	zlevel_datum_type = /datum/map_z_level/endeavor

//	lobby_icon = 'icons/misc/title_arf.dmi'
	lobby_screens = list("endeavor")
	id_hud_icons = 'icons/mob/hud_jobs_vr.dmi'
	station_name  = "ARFS Endeavor"
	station_short = "Endeavor"
	dock_name     = "ARFS Phoenix"
	boss_name     = "ARF Command"
	boss_short    = "CentCom"
	company_name  = "Alliance of Racial Federations"
	company_short = "ARF"
	starsys_name  = "Odin"

	shuttle_docked_message = "The automated crew transfer ferry has docked at the %station_name%. It will depart for the %dock_name% in approximately %ETD%."
	shuttle_leaving_dock = "The automated crew transfer ferry has left the %dock_name%. Estimate %ETA% until the tram arrives at %dock_name%."
	shuttle_called_message = "An automated crew transfer ferry is en route to the %dock_name%. It will arrive in approximately %ETA%"
	shuttle_recall_message = "The automated crew transfer has been cancelled."
	emergency_shuttle_docked_message = "The evacuation tram has arrived at the tram station. You have approximately %ETD% to board the tram."
	emergency_shuttle_leaving_dock = "The emergency tram has left the station. Estimate %ETA% until the shuttle arrives at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation has begun, and an off-schedule ferry has been called. It will arrive at the evacuation dock in approximately %ETA%."
	emergency_shuttle_recall_message = "The evacuation ferry has been recalled."

/*
	shuttle_docked_message = "The scheduled Orange Line tram to the %dock_name% has arrived. It will depart in approximately %ETD%."
	shuttle_leaving_dock = "The Orange Line tram has left the station. Estimate %ETA% until the tram arrives at %dock_name%."
	shuttle_called_message = "A scheduled crew transfer to the %dock_name% is occuring. The tram will be arriving shortly. Those departing should proceed to the Orange Line tram station within %ETA%."
	shuttle_recall_message = "The scheduled crew transfer has been cancelled."
	emergency_shuttle_docked_message = "The evacuation tram has arrived at the tram station. You have approximately %ETD% to board the tram."
	emergency_shuttle_leaving_dock = "The emergency tram has left the station. Estimate %ETA% until the shuttle arrives at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation has begun, and an off-schedule tram has been called. It will arrive at the tram station in approximately %ETA%."
	emergency_shuttle_recall_message = "The evacuation tram has been recalled."
*/
	station_networks = list(
							NETWORK_CARGO,
							NETWORK_CIVILIAN,
							NETWORK_COMMAND,
							NETWORK_ENGINE,
							NETWORK_ENGINEERING,
							NETWORK_ENGINEERING_OUTPOST,
							NETWORK_DEFAULT,
							NETWORK_MEDICAL,
							NETWORK_MINE,
							NETWORK_NORTHERN_STAR,
							NETWORK_RESEARCH,
							NETWORK_RESEARCH_OUTPOST,
							NETWORK_ROBOTS,
							NETWORK_PRISON,
							NETWORK_SECURITY,
							NETWORK_INTERROGATION
							)

	allowed_spawns = list("Cryogenic Storage", "Arrivals Dock")
	spawnpoint_died = /datum/spawnpoint/cryo
	spawnpoint_left = /datum/spawnpoint/cryo
	spawnpoint_stayed = /datum/spawnpoint/cryo

// Short range computers see only the main levels
/datum/map/endeavor/get_map_levels(var/srcz, var/long_range = TRUE)
	if (long_range && (srcz in map_levels))
		return map_levels
	else if (srcz >= 1 && srcz <= 5)
		return list(
			Z_LEVEL_ENDEAVOR_ONE,
			Z_LEVEL_ENDEAVOR_TWO,
			Z_LEVEL_ENDEAVOR_THREE,
			Z_LEVEL_ENDEAVOR_FOUR,
			Z_LEVEL_ENDEAVOR_FIVE)
	else
		return ..()

// We have a bunch of stuff common to the ship z levels
/datum/map_z_level/endeavor/ship
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER|MAP_LEVEL_CONSOLES

/datum/map_z_level/endeavor/ship/one
	z = Z_LEVEL_ENDEAVOR_ONE
	name = "Endeavor Deck 1"
	base_turf = /turf/space
	transit_chance = 20

/datum/map_z_level/endeavor/ship/two
	z = Z_LEVEL_ENDEAVOR_TWO
	name = "Endeavor Deck 2"
	base_turf = /turf/simulated/open
	transit_chance = 20

/datum/map_z_level/endeavor/ship/three
	z = Z_LEVEL_ENDEAVOR_THREE
	name = "Endeavor Deck 3"
	base_turf = /turf/simulated/open
	transit_chance = 20

/datum/map_z_level/endeavor/ship/four
	z = Z_LEVEL_ENDEAVOR_FOUR
	name = "Endeavor Deck 4"
	base_turf = /turf/simulated/open
	transit_chance = 20

/datum/map_z_level/endeavor/ship/five
	z = Z_LEVEL_ENDEAVOR_FIVE
	name = "Endeavor Deck 5"
	base_turf = /turf/simulated/open
	transit_chance = 20

/datum/map_z_level/endeavor/central_command
	z = Z_LEVEL_CENTCOM
	name = "Central Command"
	flags = MAP_LEVEL_ADMIN|MAP_LEVEL_CONTACT|MAP_LEVEL_SEALED
	base_turf = /turf/space