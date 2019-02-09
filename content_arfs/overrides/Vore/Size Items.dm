/obj/item/clothing/under/bluespace/bluespace_size(mob/usr as mob)
	if (!ishuman(usr))
		return

	var/mob/living/carbon/human/H = usr

	if (H.stat || H.restrained())
		return

	if (src != H.w_uniform)
		to_chat(H,"<span class='warning'>You must be WEARING the uniform to change your size.</span>")
		return

	var/new_size = input("Put the desired size (35-200%)", "Set Size", 200) as num|null

	//Check AGAIN because we accepted user input which is blocking.
	if (src != H.w_uniform)
		to_chat(H,"<span class='warning'>You must be WEARING the uniform to change your size.</span>")
		return

	if (H.stat || H.restrained())
		return

	if (isnull(H.size_multiplier))
		to_chat(H,"<span class='warning'>The uniform panics and corrects your apparently microscopic size.</span>")
		H.resize(RESIZE_NORMAL)
		H.update_icons() //Just want the matrix transform
		return

	if (!IsInRange(new_size,35,200))
		to_chat(H,"<span class='notice'>The safety features of the uniform prevent you from choosing this size.</span>")
		return

	else if(new_size)
		if(new_size != H.size_multiplier)
			if(!original_size)
				original_size = H.size_multiplier
			H.resize(new_size/100)
			H.visible_message("<span class='warning'>The space around [H] distorts as they change size!</span>","<span class='notice'>The space around you distorts as you change size!</span>")
		else //They chose their current size.
			return

/obj/item/weapon/gun/energy/sizegun/select_size()
	set name = "Select Size"
	set category = "Object"
	set src in view(1)

	var/size_select = input("Put the desired size (35-200%)", "Set Size", size_set_to*100) as num
	if(size_select>200 || size_select<35)
		usr << "<span class='notice'>Invalid size.</span>"
		return
	size_set_to = (size_select/100)
	usr << "<span class='notice'>You set the size to [size_select]%</span>"
