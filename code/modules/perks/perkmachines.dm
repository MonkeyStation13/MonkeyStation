// ####################################################################################################
// 									   MONKEY STATION PERK MACHINES
// ####################################################################################################
// Coded by the incompetent newby coder TheLife for Monkey Station. What could possibly go wrong?

// Perk Flags saved to:

/datum/reagent/consumable/perkliquid
	name = "Perk Liquid"
	description = "Mysterious Colored Liquid with unknown properties."
	color = "#c7d6d5"
	taste_description = "oranges"

/datum/reagent/consumable/perkliquid/on_mob_life(mob/living/carbon/M)
	. = ..()
	M.perks |= PERK_REVIVE


/datum/reagent/consumable/perkliquid/revive
	color = "#34b4ac" // rgb: 231, 129, 8

/datum/reagent/consumable/perkliquid/juggernog
	color = "#b43434" // rgb: 231, 129, 8

// ####################################################################################################
// 											QUICK REVIVE
// ####################################################################################################

/obj/item/reagent_containers/food/drinks/revivesoda
	name = "revive soda"
	desc = "A blue glowing liquid that will probably kill you rather than granting you another life."
	icon = 'icons/obj/drinks.dmi'

/obj/machinery/vending/quickrevive
	name = "\improper Quick-Revive"
	desc = "The perfect drink for someone who doesen't feel like diying today."
	icon = 'icons/obj/perks.dmi'
	icon_state = "revive"
	icon_deny = "revive"
	light_color = LIGHT_COLOR_BLUEGREEN
	products = list(/obj/item/reagent_containers/food/drinks/revivesoda = 500
					)

	product_slogans = "When everything's, been draggin' you down, grabs you by the hair and pulls you to the ground, if you wanna get up, you need a little revive. If you wanna get up... YOU NEED A LITTLE REVIIIIIIVE!...YEAH!"
	product_ads = "Reacquiring the Raygun since ever.;Making cloning go bankrupt.;Why die if you can live?"
	req_access = list(ACCESS_CAPTAIN)
	refill_canister = /obj/item/vending_refill/quickrevive
	default_price = 20
	extra_price = 50
	payment_department = ACCOUNT_SRV

/obj/machinery/vending/quickrevive/all_access
	desc = "The perfect drink for someone who doesen't feel like diying today. With no access restrictions!"
	req_access = null

/obj/item/vending_refill/quickrevive
	machine_name = "Quick-Revive"
	icon_state = "refill_donksoft"



/obj/item/reagent_containers/food/drinks/revivesoda
	name = "Revive Soda"
	desc = "You need a little revive!"
	icon_state = "perk_revive"
	list_reagents = list(/datum/reagent/consumable/perkliquid/revive = 100)




// ####################################################################################################
