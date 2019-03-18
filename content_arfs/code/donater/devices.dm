	//Andyman105
/obj/item/device/communicator/andy
	icon = 'content_arfs/icons/obj/device/andy_communcator.dmi'

/obj/item/device/gps/owen
	gps_tag = "OWEN"
	desc = "A specialized extended range GPS device"
	long_range = TRUE
	hide_signal = FALSE
	can_hide_signal = TRUE

/obj/item/weapon/commcard/owen
	name = "\improper Owen GPS cartridge"
	ui_templates = list(list("name" = "Integrated GPS", "template" = "arfs_gps_access.tmpl"))

/obj/item/weapon/commcard/owen/New()
	..()
	internal_devices |= new /obj/item/device/gps/owen(src)

/obj/item/weapon/commcard/owen/get_data()

	var/intgps[0] // Gps devices within the commcard -- Allow tag edits, turning on/off, etc
	var/extgps[0] // Gps devices not inside the commcard -- Print locations if a gps is on
	var/stagps[0] // Gps net status, location, whether it's on, if it's got long range
	var/obj/item/device/gps/cumulative = new(src)
	cumulative.tracking = FALSE
	cumulative.local_mode = TRUE // Won't detect long-range signals automatically
	cumulative.long_range = FALSE
	var/list/toggled_gps = list() // List of GPS units that are turned off before display_list() is called

	for(var/obj/item/device/gps/G in internal_devices)
		var/gpsdata[0]
		if(G.tracking && !G.emped)
			cumulative.tracking = TRUE // Turn it on
			if(G.long_range)
				cumulative.long_range = TRUE // It can detect long-range
				if(!G.local_mode)
					cumulative.local_mode = FALSE // It is detecting long-range

		gpsdata["ref"] = "\ref[G]"
		gpsdata["tag"] = G.gps_tag
		gpsdata["power"] = G.tracking
		gpsdata["local_mode"] = G.local_mode
		gpsdata["long_range"] = G.long_range
		gpsdata["hide_signal"] = G.hide_signal
		gpsdata["can_hide"] = G.can_hide_signal

		intgps[++intgps.len] = gpsdata // Add it to the list

		if(G.tracking)
			G.tracking = FALSE // Disable the internal gps units so they don't show up in the report
			toggled_gps += G

	var/list/remote_gps = cumulative.display_list() // Fetch information for all units except the ones inside of this device

	for(var/obj/item/device/gps/G in toggled_gps) // Reenable any internal GPS units
		G.tracking = TRUE

	stagps["enabled"] = cumulative.tracking
	stagps["long_range_en"] = (cumulative.long_range && !cumulative.local_mode)
	stagps["local_mode"] = cumulative.local_mode
	stagps["my_area_name"] = remote_gps["my_area_name"]
	stagps["curr_x"] = remote_gps["curr_x"]
	stagps["curr_y"] = remote_gps["curr_y"]
	stagps["curr_z"] = remote_gps["curr_z"]
	stagps["curr_z_name"] = remote_gps["curr_z_name"]

	extgps = remote_gps["gps_list"] // Compiled by the GPS

	qdel(cumulative) // Don't want spare GPS units building up in the contents

	return list(
			list("field" = "gps_access", "value" = intgps),
			list("field" = "gps_signal", "value" = extgps),
			list("field" = "gps_status", "value" = stagps)
			)

/obj/item/weapon/commcard/owen/Topic(href, href_list)
	// GPS units
	if(href_list["gps_target"])
		var/obj/item/device/gps/G = locate(href_list["gps_target"])

		if(!istype(G)) // Ref is no longer valid
			return

		if(G.loc != src) // No longer within the cartridge
			return

		switch(href_list["gps_action"])
			if("Power")
				G.tracking = text2num(href_list["value"])

			if("Long_Range")
				G.local_mode = text2num(href_list["value"])

			if("Hide_Signal")
				G.hide_signal = text2num(href_list["value"])

			if("Tag")
				var/mob/user = locate(href_list["user"])
				if(!istype(user)) // Ref no longer valid
					return

				var/newTag = input(user, "Please enter desired tag.", G.gps_tag) as text|null

				if(newTag)
					G.gps_tag = newTag

		if(href_list["active_category"])
			internal_data["supply_category"] = href_list["active_category"]