/*  WIP
/spell/shapeshift
	name = "Shapeshift"
	desc = "Take on the shape of another for a time to use their natural abilities."
	panel = "Abilities"
	spell_flags = IGNORESPACE
	invocation = "none"
	invocation_type = SpI_NONE
	charge_max = 600
	still_recharging_msg = "You do not have the energy to change yet"

	var/revert_on_death = TRUE
	var/die_with_shapeshifted_form = TRUE
	var/convert_damage = TRUE //If you want to convert the caster's health to the shift, and vice versa.
	var/convert_damage_type = BRUTE //Since simplemobs don't have advanced damagetypes, what to convert damage back into.

	var/shapeshift_type
	var/list/possible_shapes = list(/mob/living/simple_mob/arfs/bee,
									/mob/living/simple_mob/arfs/horse,
									/mob/living/simple_mob/arf/rat/passive,
									/mob/living/simple_mob/arfs/redpanda,
									/mob/living/simple_mob/pokemon/leg/articuno,
									/mob/living/simple_mob/pokemon/leg/rayquaza,
									/mob/living/simple_mob/pokemon/mewtwo,
									/mob/living/simple_mob/pokemon/absol,
									/mob/living/simple_mob/pokemon/aggron,
									/mob/living/simple_mob/pokemon/ampharos,
									/mob/living/simple_mob/pokemon/charmander,
									/mob/living/simple_mob/pokemon/ditto,
									/mob/living/simple_mob/pokemon/dratini/dragonair,
									/mob/living/simple_mob/pokemon/dratini/dragonair/dragonite,
									/mob/living/simple_mob/pokemon/dratini,
									/mob/living/simple_mob/pokemon/eevee,
									/mob/living/simple_mob/pokemon/eevee/espeon,
									/mob/living/simple_mob/pokemon/flaaffy,
									/mob/living/simple_mob/pokemon/eevee/flareon,
									/mob/living/simple_mob/pokemon/eevee/glaceon,
									/mob/living/simple_mob/pokemon/eevee/jolteon,
									/mob/living/simple_mob/pokemon/larvitar,
									/mob/living/simple_mob/pokemon/growlithe,
									/mob/living/simple_mob/pokemon/mareep,
									/mob/living/simple_mob/pokemon/poochyena/mightyena,
									/mob/living/simple_mob/pokemon/miltank,
									/mob/living/simple_mob/pokemon/poochyena,
									/mob/living/simple_mob/pokemon/eevee/sylveon,
									/mob/living/simple_mob/pokemon/eevee/umbreon,
									/mob/living/simple_mob/pokemon/vulpix,
									/mob/living/simple_mob/pokemon/tentacruel,
									/mob/living/simple_mob/pokemon/ninetails,
									/mob/living/simple_mob/pokemon/ponyta,
									/mob/living/simple_mob/pokemon/zubat,
									/mob/living/simple_mob/pokemon/tangela,
									/mob/living/simple_mob/pokemon/pincer,
									/mob/living/simple_mob/pokemon/omanyte,
									/mob/living/simple_mob/pokemon/magamar,
									/mob/living/simple_mob/pokemon/magicarp,
									/mob/living/simple_mob/pokemon/lapras,
									/mob/living/simple_mob/pokemon/Kabuto,
									/mob/living/simple_mob/pokemon/Aerodactyl,
									/mob/living/simple_mob/pokemon/lickitung,
									/mob/living/simple_mob/pokemon/cubone,
									/mob/living/simple_mob/pokemon/snorlax)//CHANGE ME TO ADD MORE MOBS TO TURN INTO


/spell/shapeshift/cast(null, mob/user = usr)
	usr << "I see you want to cast"
	if(user.buckled)
		return
	var/list/animal_list = list()
	for(var/path in possible_shapes)
		var/mob/living/simple_mob/A = path
		animal_list[initial(A.name)] = path
	if(!shapeshift_type)
		shapeshift_type = input(user, "Choose Your Animal Form!", "It's Morphing Time!", null) as null|anything in animal_list
		shapeshift_type = animal_list[shapeshift_type]

	var/obj/shapeshift_holder/S = locate() in user
	if(S)
		Restore(user)
	else
		Shapeshift(user)


/spell/shapeshift/proc/Shapeshift(mob/living/caster)
	var/obj/shapeshift_holder/H = locate() in caster
	if(H)
		to_chat(caster, "<span class='warning'>You're already shapeshifted!</span>")
		return

	var/mob/living/shape = new shapeshift_type(caster.loc)
	H = new(shape,src,caster)


/spell/shapeshift/proc/Restore(mob/living/shape)
	var/obj/shapeshift_holder/H = locate() in shape
	if(!H)
		return

	H.restore()


/obj/shapeshift_holder
	name = "Shapeshift holder"
	var/mob/living/stored
	var/mob/living/shape
	var/restoring = FALSE
	var/datum/soul_link/shapeshift/slink
	var/spell/shapeshift/source


/obj/shapeshift_holder/Initialize(mapload,/spell/shapeshift/source,mob/living/caster)
	. = ..()
	src.source = source
	shape = loc
	if(!istype(shape))
		CRASH("shapeshift holder created outside mob/living")
	stored = caster
	if(stored.mind)
		stored.mind.transfer_to(shape)
	stored.forceMove(src)
	if(source.convert_damage)
		var/damage_percent = (stored.maxHealth - stored.health)/stored.maxHealth;
		var/damapply = damage_percent * shape.maxHealth;

		shape.apply_damage(damapply, source.convert_damage_type, forced = TRUE);

	slink = soul_link(/datum/soul_link/shapeshift,stored,shape)
	slink.source = src


/obj/shapeshift_holder/Destroy()
	if(!restoring)
		restore()
	stored = null
	shape = null
	. = ..()


/obj/shapeshift_holder/Moved()
	. = ..()
	if(!restoring || QDELETED(src))
		restore()


/obj/shapeshift_holder/Exited(atom/movable/AM)
	if(AM == stored && !restoring)
		restore()


/obj/shapeshift_holder/proc/casterDeath()
	//Something kills the stored caster through direct damage.
	if(source.revert_on_death)
		restore(death=TRUE)
	else
		shape.death()


/obj/shapeshift_holder/proc/shapeDeath()
	//Shape dies.
	if(source.die_with_shapeshifted_form)
		if(source.revert_on_death)
			restore(death=TRUE)
	else
		restore()


/obj/shapeshift_holder/proc/restore(death=FALSE)
	restoring = TRUE
	qdel(slink)
	stored.forceMove(get_turf(src))
	if(shape.mind)
		shape.mind.transfer_to(stored)
	if(death)
		stored.death()
	else if(source.convert_damage)
		stored.revive(full_heal = TRUE)

		var/damage_percent = (shape.maxHealth - shape.health)/shape.maxHealth;
		var/damapply = stored.maxHealth * damage_percent

		stored.apply_damage(damapply, source.convert_damage_type, forced = TRUE)
	qdel(shape)
	qdel(src)


/datum/soul_link/shapeshift
	var/obj/shapeshift_holder/source


/datum/soul_link/shapeshift/owner_died(gibbed, mob/living/owner)
	if(source)
		source.casterDeath(gibbed)


/datum/soul_link/shapeshift/sharer_died(gibbed, mob/living/sharer)
	if(source)
		source.shapeDeath(gibbed)
*/