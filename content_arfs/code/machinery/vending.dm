//some items are commented out because they aren't ported.
//also broke up the two items per line to make it read a bit easier. - Gozulio
/obj/machinery/vending/kink
	name = "KinkMate"
	desc = "A vending machine for all your unmentionable desires."
	icon_state = "lewd"
	icon = 'content_arfs/icons/obj/vending.dmi'
	product_slogans = "Kinky!;Sexy!;Check me out, big boy!"
	vend_delay = 15
	vend_reply = "Have fun, you shameless pervert!"
	products = list(
		/obj/item/clothing/under/schoolgirl=3,
		/obj/item/clothing/ears/earmuffs=2,
		/obj/item/clothing/glasses/sunglasses/blindfold=2,
		/obj/item/clothing/mask/muzzle=2,
		/obj/item/weapon/sextoy/dildo/canine=4,
		/obj/item/weapon/sextoy/dildo/seadragon=4,
		/obj/item/weapon/sextoy/dildo/equine=4,
		/obj/item/weapon/sextoy/dildo/purpledong=4,
		/obj/item/weapon/sextoy/dildo/bigblackdick=4,
		/obj/item/weapon/sextoy/dildo/floppydick=4,
		/obj/item/weapon/sextoy/dildo/bulletvibe=4,
		/obj/item/weapon/sextoy/dildo/fleshlight=2,
		/obj/item/weapon/sextoy/dildo/analbeads=2,
//		/obj/item/clothing/under/birthdaysuit=5,
//		/obj/item/clothing/under/nuditypermit=5,
//		/obj/item/clothing/suit/strapon = 5,
//		/obj/item/clothing/suit/strapon/equine=5
	)
//	prices = list(/obj/item/clothing/under/nuditypermit=500)  Cactus please why u do dis  ~TK

//Commented out because none of this vendors contents are ported yet.
//i also think vore has a toy vendor with plushes in it. - Gozulio
/*
/obj/machinery/vending/toy/thingpony
	name = "Toy Vendor"
	desc = "A cute teddy bear! It can give you toys!"
	product_ads = "Action figures!"
	icon_state = "toy"
	icon = 'content_arfs/icons/obj/vending.dmi'
	vend_reply = "Get to donk-ing!"
	products = list(
		/obj/item/toy/balloon=5,
		/obj/item/toy/snappop=5,
		/obj/item/toy/cards/deck=5,
		/obj/item/toy/therapy/red=5,
		/obj/item/toy/therapy/purple=5,
		/obj/item/toy/therapy/blue=5,
		/obj/item/toy/therapy/yellow=5,
		/obj/item/toy/therapy/orange=5,
		/obj/item/toy/therapy/green=5,
		/obj/item/toy/carpplushie=5,
		/obj/item/toy/carpplushie/ice=5,
		/obj/item/toy/carpplushie/silent=5,
		/obj/item/toy/carpplushie/electric=5,
		/obj/item/toy/carpplushie/gold=5,
		/obj/item/toy/carpplushie/toxin=5,
		/obj/item/toy/carpplushie/dragon=5,
		/obj/item/toy/carpplushie/pink=5,
		/obj/item/toy/carpplushie/candy=5,
		/obj/item/toy/carpplushie/nebula=5,
		/obj/item/toy/carpplushie/void=5,
		/obj/item/toy/plushie/corgi=5,
		/obj/item/toy/plushie/girly_corgi=5,
		/obj/item/toy/plushie/robo_corgi=5,
		/obj/item/toy/plushie/octopus=5,
		/obj/item/toy/plushie/face_hugger=5,
		/obj/item/toy/plushie/red_fox=5,
		/obj/item/toy/plushie/black_fox=5,
		/obj/item/toy/plushie/marble_fox=5,
		/obj/item/toy/plushie/blue_fox=5,
		/obj/item/toy/plushie/orange_fox=5,
		/obj/item/toy/plushie/coffee_fox=5,
		/obj/item/toy/plushie/pink_fox=5,
		/obj/item/toy/plushie/purple_fox=5,
		/obj/item/toy/plushie/crimson_fox=5,
		/obj/item/toy/plushie/deer=5,
		/obj/item/toy/plushie/black_cat=5,
		/obj/item/toy/plushie/grey_cat=5,
		/obj/item/toy/plushie/white_cat=5,
		/obj/item/toy/plushie/orange_cat=5,
		/obj/item/toy/plushie/siamese_cat=5,
		/obj/item/toy/plushie/tabby_cat=5,
		/obj/item/toy/plushie/tuxedo_cat=5,
		/obj/item/toy/plushie/dakibase=5,
		/obj/item/toy/plushie/dakicallie=5,
		/obj/item/toy/plushie/dakicasca=5,
		/obj/item/toy/plushie/dakichaika=5,
		/obj/item/toy/plushie/dakichaika2=5,
		/obj/item/toy/plushie/dakielisabeth=5,/obj/item/toy/plushie/dakifoxygrandpa=5,
		/obj/item/toy/plushie/haruko=5,
		/obj/item/toy/plushie/holo=5,
		/obj/item/toy/plushie/hotwheels=5,
		/obj/item/toy/plushie/ian=5,
		/obj/item/toy/plushie/jolyne=5,
		/obj/item/toy/plushie/kurisu=5,
		/obj/item/toy/plushie/marie=5,
		/obj/item/toy/plushie/mugi=5,
		/obj/item/toy/plushie/narnar=5,
		/obj/item/toy/plushie/patchouli=5,
		/obj/item/toy/plushie/plutia=5,
		/obj/item/toy/plushie/rei=5,
		/obj/item/toy/plushie/reisen=5,
		/obj/item/toy/plushie/naga=5,
		/obj/item/toy/plushie/squid=5,
		/obj/item/toy/plushie/squiggly=5,
		/obj/item/toy/plushie/sue=5,
		/obj/item/toy/plushie/rei=5,
		/obj/item/toy/plushie/tomoko=5,
		/obj/item/toy/plushie/toriel=5,
		/obj/item/toy/plushie/umaru=5,
		/obj/item/toy/plushie/yaranaika=5,
		/obj/item/toy/plushie/yoko=5,
		/obj/item/toy/plushie/camille=5,
		/obj/item/toy/eight_ball=5,
		/obj/item/toy/eight_ball/conch=5,
	)
*/


/obj/machinery/vending/arfsnifsoft
	name = "NIFsoft"
	desc = "Apparently, it's a knock-off of some other corporation's vendor and product-line."
	icon_state = "proj"
	icon = 'icons/obj/machines/ar_elements.dmi'
	product_slogans = "Upgrade your life!,Totally not a knock-off!"
	vend_delay = 15
	vend_reply = "Enjoy your product."
	products = list(
		/obj/item/weapon/disk/nifsoft/arciv=10,
		/obj/item/weapon/disk/nifsoft/arcorrective=10,
		/obj/item/weapon/disk/nifsoft/uvblocker=10,
		/obj/item/weapon/disk/nifsoft/mesons=10,
		/obj/item/weapon/disk/nifsoft/medichines_org=10,
		/obj/item/weapon/disk/nifsoft/medichines_syn=10,
		/obj/item/weapon/disk/nifsoft/respirocytes=10,
		/obj/item/weapon/disk/nifsoft/mindbackup=10,
		/obj/item/weapon/disk/nifsoft/communicator=10,
		/obj/item/weapon/disk/nifsoft/apc_recharge=10,
		/obj/item/weapon/disk/nifsoft/pressure=10,
		/obj/item/weapon/disk/nifsoft/heatsinks=10,
		/obj/item/weapon/disk/nifsoft/worldbend=10,)
	prices = list(
		/obj/item/weapon/disk/nifsoft/arciv=500,
		/obj/item/weapon/disk/nifsoft/arcorrective=500,
		/obj/item/weapon/disk/nifsoft/uvblocker=1000,
		/obj/item/weapon/disk/nifsoft/mesons=1000,
		/obj/item/weapon/disk/nifsoft/medichines_org=1500,
		/obj/item/weapon/disk/nifsoft/medichines_syn=1500,
		/obj/item/weapon/disk/nifsoft/respirocytes=1500,
		/obj/item/weapon/disk/nifsoft/mindbackup=1000,
		/obj/item/weapon/disk/nifsoft/communicator=500,
		/obj/item/weapon/disk/nifsoft/apc_recharge=1250,
		/obj/item/weapon/disk/nifsoft/pressure=1250,
		/obj/item/weapon/disk/nifsoft/heatsinks=1250,
		/obj/item/weapon/disk/nifsoft/worldbend=100,)




/*//Custom vendors
/obj/machinery/vending/nifsoft_shop/arfs
	name = "NIFSoft Shop"
	desc = "For all your mindware and mindware accessories."
	product_ads = "Let us get into your head!;Looking for an upgrade?;Surpass Humanity!;Why be normal when you can be SUPERnormal?;Jack in with NIFSoft!"

	icon = 'icons/obj/machines/ar_elements.dmi'
	icon_state = "proj"
	icon_vend = "beacon_yes"
	icon_deny = "beacon_no"

	products = list()
	contraband = list()
	premium = list()
	var/global/list/starting_legal_nifsoft
	var/global/list/starting_illegal_nifsoft

	density = 0
	opacity = 0
	var/datum/entopic/entopic

/obj/machinery/vending/nifsoft_shop/initialize()
	. = ..()
	entopic = new(aholder = src, aicon = icon, aicon_state = "beacon")

/obj/machinery/vending/nifsoft_shop/Destroy()
	QDEL_NULL(entopic)
	return ..()

/obj/machinery/vending/nifsoft_shop/power_change()
	..()
	if(!entopic) return //Early APC init(), ignore
	if(stat & BROKEN)
		icon_state = "[initial(icon_state)]-broken"
		entopic.hide()
	else
		if(!(stat & NOPOWER))
			icon_state = initial(icon_state)
			entopic.show()
		else
			spawn(rand(0, 15))
				icon_state = "[initial(icon_state)]-off"
				entopic.hide()

/obj/machinery/vending/nifsoft_shop/malfunction()
	stat |= BROKEN
	icon_state = "[initial(icon_state)]-broken"
	entopic.hide()
	return

// Special Treatment!
/obj/machinery/vending/nifsoft_shop/build_inventory()
	//Firsties
	if(!starting_legal_nifsoft)
		starting_legal_nifsoft = list()
		starting_illegal_nifsoft = list()
		for(var/P in (subtypesof(/datum/nifsoft) - typesof(/datum/nifsoft/package)))
			var/datum/nifsoft/NS = P
			if(initial(NS.vended))
				switch(initial(NS.illegal))
					if(TRUE)
						starting_illegal_nifsoft += NS
					if(FALSE)
						starting_legal_nifsoft += NS

	products = starting_legal_nifsoft.Copy()
	contraband = starting_illegal_nifsoft.Copy()

	var/list/all_products = list(
		list(products, CAT_NORMAL),
		list(contraband, CAT_HIDDEN),
		list(premium, CAT_COIN))

	for(var/current_list in all_products)
		var/category = current_list[2]

		for(var/entry in current_list[1])
			var/datum/nifsoft/NS = entry
			var/applies_to = initial(NS.applies_to)
			var/context = ""
			if(!(applies_to & NIF_SYNTHETIC))
				context = " (Org Only)"
			else if(!(applies_to & NIF_ORGANIC))
				context = " (Syn Only)"
			var/name = "[initial(NS.name)][context]"
			var/datum/stored_item/vending_product/product = new/datum/stored_item/vending_product(src, entry, name)

			product.price = initial(NS.cost)
			product.amount = 10
			product.category = category

			product_records.Add(product)

/obj/machinery/vending/nifsoft_shop/allowed(mob/user)
	if(!ishuman(user))
		return FALSE

	var/mob/living/carbon/human/H = user
	if(!H.nif || !H.nif.stat == NIF_WORKING)
		to_chat(H,"<span class='warning'>[src] seems unable to connect to your NIF...</span>")
		flick(icon_deny,entopic.my_image)
		return FALSE

	return ..()

//Had to override this too
/obj/machinery/vending/nifsoft_shop/Topic(href, href_list)
	if(stat & (BROKEN|NOPOWER))
		return
	if(usr.stat || usr.restrained())
		return

	if(href_list["remove_coin"] && !istype(usr,/mob/living/silicon))
		if(!coin)
			usr << "There is no coin in this machine."
			return

		coin.forceMove(src.loc)
		if(!usr.get_active_hand())
			usr.put_in_hands(coin)
		usr << "<span class='notice'>You remove \the [coin] from \the [src]</span>"
		coin = null
		categories &= ~CAT_COIN

	if((usr.contents.Find(src) || (in_range(src, usr) && istype(src.loc, /turf))))
		if((href_list["vend"]) && (vend_ready) && (!currently_vending))
			if((!allowed(usr)) && !emagged && scan_id)	//For SECURE VENDING MACHINES YEAH
				usr << "<span class='warning'>Access denied.</span>"	//Unless emagged of course
				flick(icon_deny,entopic.my_image)
				return

			var/key = text2num(href_list["vend"])
			var/datum/stored_item/vending_product/R = product_records[key]

			// This should not happen unless the request from NanoUI was bad
			if(!(R.category & categories))
				return

			//Specific soft access checking
			var/datum/nifsoft/path = R.item_path
			if(initial(path.access))
				var/list/soft_access = list(initial(path.access))
				var/list/usr_access = usr.GetAccess()
				if(!has_access(soft_access, list(), usr_access) && !emagged)
					usr << "<span class='warning'>You aren't authorized to buy [initial(path.name)].</span>"
					flick(icon_deny,entopic.my_image)
					return

			if(R.price <= 0)
				vend(R, usr)
			else if(istype(usr,/mob/living/silicon)) //If the item is not free, provide feedback if a synth is trying to buy something.
				usr << "<span class='danger'>Artificial unit recognized.  Artificial units cannot complete this transaction.  Purchase canceled.</span>"
				return
			else
				currently_vending = R
				if(!vendor_account || vendor_account.suspended)
					status_message = "This machine is currently unable to process payments due to problems with the associated account."
					status_error = 1
				else
					status_message = "[initial(path.desc)]<br><br><b>Please swipe a card or insert cash to pay for the item.</b>"
					status_error = 0

		else if(href_list["cancelpurchase"])
			currently_vending = null

		else if((href_list["togglevoice"]) && (panel_open))
			shut_up = !shut_up

		add_fingerprint(usr)
		GLOB.nanomanager.update_uis(src)

// Also special treatment!
/obj/machinery/vending/nifsoft_shop/vend(datum/stored_item/vending_product/R, mob/user)
	var/mob/living/carbon/human/H = user
	if((!allowed(usr)) && !emagged && scan_id && istype(H))	//For SECURE VENDING MACHINES YEAH
		usr << "<span class='warning'>Purchase not allowed.</span>"	//Unless emagged of course
		flick(icon_deny,entopic.my_image)
		return
	vend_ready = 0 //One thing at a time!!
	status_message = "Installing..."
	status_error = 0
	GLOB.nanomanager.update_uis(src)

	if(R.category & CAT_COIN)
		if(!coin)
			user << "<span class='notice'>You need to insert a coin to get this item.</span>"
			return
		if(coin.string_attached)
			if(prob(50))
				user << "<span class='notice'>You successfully pull the coin out before \the [src] could swallow it.</span>"
			else
				user << "<span class='notice'>You weren't able to pull the coin out fast enough, the machine ate it, string and all.</span>"
				qdel(coin)
				coin = null
				categories &= ~CAT_COIN
		else
			qdel(coin)
			coin = null
			categories &= ~CAT_COIN

	if(((last_reply + (vend_delay + 200)) <= world.time) && vend_reply)
		spawn(0)
			speak(vend_reply)
			last_reply = world.time

	use_power(vend_power_usage)	//actuators and stuff
	spawn(vend_delay)
		R.amount--
		new R.item_path(H.nif)
		flick(icon_vend,entopic.my_image)
		if(has_logs)
			do_logging(R, user, 1)

		status_message = ""
		status_error = 0
		vend_ready = 1
		currently_vending = null
		GLOB.nanomanager.update_uis(src)
	return 1*/
