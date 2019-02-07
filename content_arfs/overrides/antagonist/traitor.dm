/datum/antagonist/traitor/create_objectives(var/datum/mind/traitor)
	if(!..())
		return

	if(istype(traitor.current, /mob/living/silicon))
		//datum/objective/assassinate/kill_objective = new
		//kill_objective.owner = traitor
		//kill_objective.find_target()
		//traitor.objectives += kill_objective

		var/datum/objective/survive/survive_objective = new
		survive_objective.owner = traitor
		traitor.objectives += survive_objective

	else
		switch(rand(1,100))
			if(34 to 50)
				var/datum/objective/brig/brig_objective = new
				brig_objective.owner = traitor
				brig_objective.find_target()
				traitor.objectives += brig_objective
			else
				var/datum/objective/steal/steal_objective = new
				steal_objective.owner = traitor
				steal_objective.find_target()
				traitor.objectives += steal_objective

		if (!(locate(/datum/objective/escape) in traitor.objectives))
			var/datum/objective/escape/escape_objective = new
			escape_objective.owner = traitor
			traitor.objectives += escape_objective
	return