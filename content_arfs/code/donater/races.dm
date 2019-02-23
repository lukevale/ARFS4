// EEVEE RACE - Restricted to ThingPony
/datum/species/human/eevee
	name = "Eevee"
	name_plural = "Eevees"


	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite)

	tail = "tail"
	icobase_tail = 1
//	color_mult = 1
//	color_blend = 0

	blurb = "Spce eevee? Space eevee!"
	secondary_langs = list(LANGUAGE_CANILUNZT)

	icobase = 'content_arfs/icons/mob/player/r_eevee_arf.dmi'    // Normal icon set.
	deform = 'content_arfs/icons/mob/player/r_eevee_arf.dmi' // Mutated icon set.

	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 100
	health_hud_intensity = 2
	num_alternate_languages = 3

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_EYE_COLOR

//	ckeyrestricted = "thingpony"

