var/global/datum/controller/process/autobunker/autobunkerProcess

/datum/controller/process/autobunker
	var/warnings = 0
	var/max_warnings = 30
	var/list/alert_times = list(5,10,15,20,25,26,27,28) //5 = 25 minutes, 28 = 2 minutes

/datum/controller/process/autobunker/setup()
	name = "autobunker"
	schedule_interval = 600 //Every minute
	autobunkerProcess = src

/datum/controller/process/autobunker/doWork()
	var/non_afk_admins = 0
	var/afk_admins = 0

	if(config.panic_bunker == 0)          //Panic bumker is open
		for(var/client/C in admins)       //Get a list of admins
			if(R_ADMIN & C.holder.rights) //Make sure they have admin rights
				if(!C.is_afk())           //Get a count of non-AFK admins
					non_afk_admins += 1
				else
					afk_admins += 1

		if(non_afk_admins > 0)
			warnings = 0
			return

		if(non_afk_admins == 0 && afk_admins > 0)
			warnings += 1
			if(warnings < max_warnings)
				if(warnings == max_warnings - 1)
					message_admins("No active admins, panic bunker closing in 1 minute!")
					return
				if(warnings in alert_times)
					message_admins("No active admins, panic bunker closing in [max_warnings - warnings] minutes!")
					return
			else
				log_admin("Panic bunker open with no active admins. Autobunker has closed the panic bunker.")
				message_admins("Panic bunker open with no active admins. Autobunker has closed the panic bunker.")
				config.panic_bunker = 1
				warnings = 0
				return

		if(non_afk_admins == 0 && afk_admins == 0)
			log_admin("Panic bunker open with no admins online. Panic bunker closed by Autobunker.")
			config.panic_bunker = 1
			warnings = 0
			return