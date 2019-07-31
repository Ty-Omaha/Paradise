
/obj/item/clothing/head/helmet/space/hardsuit/ert
	name = "emergency response team helmet"
	desc = "A helmet worn by members of the Nanotrasen Emergency Response Team. Armoured and space ready."
	icon_state = "hardsuit0-ert_commander"
	item_state = "helm-command"
	armor = list(melee = 45, bullet = 25, laser = 30, energy = 10, bomb = 25, bio = 100, rad = 50)
	hardsuit_restrict_helmet = 0 // ERT helmets can be taken on and off at will.
	var/obj/machinery/camera/camera
	var/has_camera = TRUE
	strip_delay = 130

	sprite_sheets = list(
		"Grey" = 'icons/mob/species/grey/helmet.dmi',
		"Vox" = 'icons/mob/species/vox/helmet.dmi'
		)

/obj/item/clothing/head/helmet/space/hardsuit/ert/attack_self(mob/user)
	if(camera || !has_camera)
		..(user)
	else
		camera = new /obj/machinery/camera(src)
		camera.network = list("ERT")
		cameranet.removeCamera(camera)
		camera.c_tag = user.name
		to_chat(user, "<span class='notice'>User scanned as [camera.c_tag]. Camera activated.</span>")

/obj/item/clothing/head/helmet/space/hardsuit/ert/examine(mob/user)
	if(..(user, 1) && has_camera)
		to_chat(user, "This helmet has a built-in camera. It's [camera ? "" : "in"]active.")

/obj/item/clothing/suit/space/hardsuit/ert
	name = "emergency response team suit"
	desc = "A suit worn by members of the Nanotrasen Emergency Response Team. Armoured, space ready, and fire resistant."
	icon_state = "ert_commander"
	item_state = "suit-command"
	w_class = WEIGHT_CLASS_NORMAL
	allowed = list(/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/melee/energy/sword/saber,/obj/item/restraints/handcuffs,/obj/item/tank)
	armor = list(melee = 45, bullet = 25, laser = 30, energy = 10, bomb = 25, bio = 100, rad = 50)
	allowed = list(/obj/item/flashlight, /obj/item/tank, /obj/item/t_scanner, /obj/item/rcd, /obj/item/crowbar, \
	/obj/item/screwdriver, /obj/item/weldingtool, /obj/item/wirecutters, /obj/item/wrench, /obj/item/multitool, \
	/obj/item/radio, /obj/item/analyzer, /obj/item/gun/energy/laser, /obj/item/gun/energy/pulse, \
	/obj/item/gun/energy/gun/advtaser, /obj/item/melee/baton, /obj/item/gun/energy/gun, /obj/item/gun/projectile/automatic/lasercarbine, /obj/item/gun/energy/gun/blueshield, /obj/item/gun/energy/immolator/multi)
	strip_delay = 130

	sprite_sheets = list(
		"Drask" = 'icons/mob/species/drask/suit.dmi',
		"Vox" = 'icons/mob/species/vox/suit.dmi'
		)
	
/obj/item/clothing/suit/space/hardsuit/ert/commander/naval
	name = "naval combat hardsuit"
	desc = "A military grade hardsuit worn by members of the Nanotrasen Navy."
	icon_state = "naval_hardsuit"
	item_state = "naval_hardsuit"
	w_class = WEIGHT_CLASS_NORMAL
	allowed = list(/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/melee/energy/sword/saber,/obj/item/restraints/handcuffs,/obj/item/tank)
	armor = list(melee = 65, bullet = 60, laser = 40, energy = 35, bomb = 35, bio = 100, rad = 100)
	allowed = list(/obj/item/flashlight, /obj/item/tank, /obj/item/t_scanner, /obj/item/rcd, /obj/item/crowbar, \
	/obj/item/screwdriver, /obj/item/weldingtool, /obj/item/wirecutters, /obj/item/wrench, /obj/item/multitool, \
	/obj/item/radio, /obj/item/analyzer, /obj/item/gun, \
	/obj/item/melee)
	strip_delay = 200
	
/obj/item/clothing/head/helmet/space/hardsuit/ert/commander/naval
	name = "naval combat helmet"
	desc = "A military grade helmet worn by members of the Nanotrasen Navy."
	icon_state = "naval_helmet_commander"
	item_state = "naval_helmet_commander"
	armor = list(melee = 65, bullet = 60, laser = 40, energy = 35, bomb = 35, bio = 100, rad = 100)
	hardsuit_restrict_helmet = 0 // naval helmets can be taken on and off at will.
	strip_delay = 130
	
/obj/item/clothing/head/helmet/space/hardsuit/ert/security/naval
	name = "naval combat helmet"
	desc = "A military grade helmet worn by members of the Nanotrasen Navy."
	icon_state = "naval_helmet"
	item_state = "naval_helmet"

	
/obj/item/clothing/suit/space/hardsuit/ert/security/naval
	name = "naval combat hardsuit"
	desc = "A military grade hardsuit worn by members of the Nanotrasen Navy."
	icon_state = "naval_hardsuit"
	item_state = "naval_hardsuit"
	w_class = WEIGHT_CLASS_NORMAL
	allowed = list(/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/melee/energy/sword/saber,/obj/item/restraints/handcuffs,/obj/item/tank)
	armor = list(melee = 65, bullet = 60, laser = 40, energy = 35, bomb = 35, bio = 100, rad = 100)
	allowed = list(/obj/item/flashlight, /obj/item/tank, /obj/item/t_scanner, /obj/item/rcd, /obj/item/crowbar, \
	/obj/item/screwdriver, /obj/item/weldingtool, /obj/item/wirecutters, /obj/item/wrench, /obj/item/multitool, \
	/obj/item/radio, /obj/item/analyzer, /obj/item/gun, \
	/obj/item/melee)
	strip_delay = 200
	
/obj/item/clothing/head/helmet/space/hardsuit/ert/naval/officer
	name = "naval officer helmet"
	desc = "A military grade helmet worn by officers of the Nanotrasen Navy."
	icon_state = "naval_helmet_officer"
	item_state = "naval_helmet_officer"
	
/obj/item/clothing/head/helmet/space/hardsuit/ert/naval/commander
	name = "naval combat commander helmet"
	desc = "A military grade helmet worn by commanders of a Nanotrasen naval task force."
	icon_state = "naval_helmet_commander"
	item_state = "naval_helmet_commander"

/obj/item/clothing/head/helmet/space/hardsuit/ert/naval/attack_self(mob/user)
	if(camera || !has_camera)
		..(user)
	else
		camera = new /obj/machinery/camera(src)
		camera.network = list("Navy")
		cameranet.removeCamera(camera)
		camera.c_tag = user.name
		to_chat(user, "<span class='notice'>User scanned as [camera.c_tag]. Camera activated.</span>")


//Commander
/obj/item/clothing/head/helmet/space/hardsuit/ert/commander
	name = "emergency response team commander helmet"
	desc = "A helmet worn by the commander of a Nanotrasen Emergency Response Team. Has blue highlights. Armoured and space ready."
	icon_state = "hardsuit0-ert_commander"
	item_state = "helm-command"
	item_color = "ert_commander"

/obj/item/clothing/head/helmet/space/hardsuit/ert/commander/gamma
	name = "elite emergency response team commander helmet"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "hardsuit0-gammacommander"
	item_color = "gammacommander"

/obj/item/clothing/suit/space/hardsuit/ert/commander
	name = "emergency response team commander suit"
	desc = "A suit worn by the commander of a Nanotrasen Emergency Response Team. Has blue highlights. Armoured, space ready, and fire resistant."
	icon_state = "ert_commander"
	item_state = "suit-command"

/obj/item/clothing/suit/space/hardsuit/ert/commander/gamma
	name = "elite emergency response team commander suit"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "ert_gcommander"

//Security
/obj/item/clothing/head/helmet/space/hardsuit/ert/security
	name = "emergency response team security helmet"
	desc = "A helmet worn by security members of a Nanotrasen Emergency Response Team. Has red highlights. Armoured and space ready."
	icon_state = "hardsuit0-ert_security"
	item_state = "syndicate-helm-black-red"
	item_color = "ert_security"

/obj/item/clothing/head/helmet/space/hardsuit/ert/security/gamma
	name = "elite emergency response team security helmet"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "hardsuit0-gammasecurity"
	item_color = "gammasecurity"

/obj/item/clothing/suit/space/hardsuit/ert/security
	name = "emergency response team security suit"
	desc = "A suit worn by security members of a Nanotrasen Emergency Response Team. Has red highlights. Armoured, space ready, and fire resistant."
	icon_state = "ert_security"
	item_state = "syndicate-black-red"

/obj/item/clothing/suit/space/hardsuit/ert/security/gamma
	name = "elite emergency response team security suit"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "ert_gsecurity"

//Engineer
/obj/item/clothing/head/helmet/space/hardsuit/ert/engineer
	name = "emergency response team engineer helmet"
	desc = "A helmet worn by engineers of a Nanotrasen Emergency Response Team. Has yellow highlights. Armoured and space ready."
	icon_state = "hardsuit0-ert_engineer"
	item_state = "helm-orange"
	item_color = "ert_engineer"

//Engineer
/obj/item/clothing/head/helmet/space/hardsuit/ert/engineer/gamma
	name = "elite emergency response team engineer helmet"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "hardsuit0-gammaengineer"
	item_color = "gammaengineer"

/obj/item/clothing/suit/space/hardsuit/ert/engineer
	name = "emergency response team engineer suit"
	desc = "A suit worn by the engineers of a Nanotrasen Emergency Response Team. Has yellow highlights. Armoured, space ready, and fire resistant."
	icon_state = "ert_engineer"
	item_state = "suit-orange"

/obj/item/clothing/suit/space/hardsuit/ert/engineer/gamma
	name = "elite emergency response team engineer suit"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "ert_gengineer"

//Medical
/obj/item/clothing/head/helmet/space/hardsuit/ert/medical
	name = "emergency response team medical helmet"
	desc = "A helmet worn by medical members of a Nanotrasen Emergency Response Team. Has white highlights. Armoured and space ready."
	icon_state = "hardsuit0-ert_medical"
	item_color = "ert_medical"

/obj/item/clothing/head/helmet/space/hardsuit/ert/medical/gamma
	name = "elite emergency response team medical helmet"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "hardsuit0-gammamedical"
	item_color = "gammamedical"

/obj/item/clothing/suit/space/hardsuit/ert/medical
	name = "emergency response team medical suit"
	desc = "A suit worn by medical members of a Nanotrasen Emergency Response Team. Has white highlights. Armoured and space ready."
	icon_state = "ert_medical"

/obj/item/clothing/suit/space/hardsuit/ert/medical/gamma
	name = "elite emergency response team medical suit"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "ert_gmedical"

//Janitor
/obj/item/clothing/head/helmet/space/hardsuit/ert/janitor
	name = "emergency response team janitor helmet"
	desc = "A helmet worn by janitorial members of a Nanotrasen Emergency Response Team. Has purple highlights. Armoured and space ready."
	icon_state = "hardsuit0-ert_janitor"
	item_color = "ert_janitor"

/obj/item/clothing/head/helmet/space/hardsuit/ert/janitor/gamma
	name = "elite emergency response team janitor helmet"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "hardsuit0-gammajanitor"
	item_color = "gammajanitor"
/obj/item/clothing/suit/space/hardsuit/ert/janitor
	name = "emergency response team janitor suit"
	desc = "A suit worn by the janitorial of a Nanotrasen Emergency Response Team. Has purple highlights. Armoured, space ready, and fire resistant."
	icon_state = "ert_janitor"

/obj/item/clothing/suit/space/hardsuit/ert/janitor/gamma
	name = "elite emergency response team janitor suit"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "ert_gjanitor"
	

//Paranormal
/obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal
	name = "paranormal response unit helmet"
	desc = "A helmet worn by those who deal with paranormal threats for a living."
	icon_state = "hardsuit0-ert_paranormal"
	item_color = "ert_paranormal"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	sprite_sheets = null
	actions_types = list()
	has_camera = 0

/obj/item/clothing/suit/space/hardsuit/ert/paranormal
	name = "paranormal response team suit"
	desc = "Powerful wards are built into this hardsuit, protecting the user from all manner of paranormal threats."
	icon_state = "hardsuit-paranormal"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	sprite_sheets = null
	actions_types = list()

/obj/item/clothing/suit/space/hardsuit/ert/paranormal/New()
	..()
	new /obj/item/nullrod(src)

/obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal/inquisitor
	name = "inquisitor's helmet"
	icon_state = "hardsuit0-inquisitor"
	item_color = "inquisitor"

/obj/item/clothing/suit/space/hardsuit/ert/paranormal/inquisitor
	name = "inquisitor's hardsuit"
	icon_state = "hardsuit-inquisitor"

/obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal/berserker
	name = "champion's helmet"
	desc = "Peering into the eyes of the helmet is enough to seal damnation."
	icon_state = "hardsuit0-berserker"
	item_color = "berserker"

/obj/item/clothing/suit/space/hardsuit/ert/paranormal/berserker
	name = "champion's hardsuit"
	desc = "Voices echo from the hardsuit, driving the user insane."
	icon_state = "hardsuit-berserker"
