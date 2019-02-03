#define Z_LEVEL_MAIN_ARFS					1
#define Z_LEVEL_CENTCOM_ARFS				2
#define Z_LEVEL_EMPTY_ARFS					3
#define Z_LEVEL_HOTEL_ARFS					4
#define Z_LEVEL_MINING_ARFS					5


/datum/map/arfs
	name = "ARFS"
	full_name = "ARFS Dallus"
	path = "arfs"

	lobby_icon = 'icons/misc/title.dmi'
	lobby_screens = list("arfs")

	station_levels = list(
		Z_LEVEL_MAIN_ARFS,
		)

	admin_levels = list(Z_LEVEL_CENTCOM_ARFS)

	contact_levels = list(
		Z_LEVEL_MAIN_ARFS,
		Z_LEVEL_CENTCOM_ARFS,
		Z_LEVEL_MINING_ARFS
		)

	player_levels = list(
		Z_LEVEL_MAIN_ARFS,
		Z_LEVEL_EMPTY_ARFS,
		Z_LEVEL_HOTEL_ARFS,
		Z_LEVEL_MINING_ARFS
		)

	accessible_z_levels = list("1" = 5, "3" = 60, "4" = 0, "5" = 20) // The defines can't be used here sadly.

	base_turf_by_z = list("5" = /turf/simulated/mineral/floor)

// to do: change accordingly for arfs.

	station_name  = "A.R.F.S. Dallus"
	station_short = "Dallus"
	dock_name     = "the docking area"
	boss_name     = "ARF - Command"
	boss_short    = "ARF - Command"
	company_name  = "Alliance of Racial Federations"
	company_short = "A.R.F."
	starsys_name  = "Canis Majoris - Watermelonus Cluster IV"

	shuttle_docked_message = "The scheduled shuttle to the %dock_name% has docked with the ship at docks one and two. It will depart in approximately %ETD%."
	shuttle_leaving_dock = "The Crew Transfer Shuttle has left the ship. Estimate %ETA% until the shuttle docks at %dock_name%."
	shuttle_called_message = "A crew transfer to %Dock_name% has been scheduled. The shuttle has been called. Those leaving should procede to docks one and two in approximately %ETA%"
	shuttle_recall_message = "The scheduled crew transfer has been cancelled."
	emergency_shuttle_docked_message = "The Emergency Shuttle has docked with the ship at docks one and two. You have approximately %ETD% to board the Emergency Shuttle."
	emergency_shuttle_leaving_dock = "The Emergency Shuttle has left the ship. Estimate %ETA% until the shuttle docks at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation shuttle has been called. It will arrive at docks one and two in approximately %ETA%"
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled."

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

	allowed_spawns = list("Cryogenic Storage")

/datum/map/arfs/perform_map_generation()
	new /datum/random_map/automata/cave_system(null, 1, 1, Z_LEVEL_MINING_ARFS, world.maxx, world.maxy) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null, 1, 1, Z_LEVEL_MINING_ARFS, world.maxx, world.maxy)         // Create the mining ore distribution map.
	return 1
