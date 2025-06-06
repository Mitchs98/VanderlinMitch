//master carpenter

/datum/advclass/pilgrim/rare/mastercarpenter
	name = "Master Carpenter"
	tutorial = "A true artisan in the field of woodcrafting, your skills honed by years in a formal guild. \
	As a master carpenter, you transform trees into anything from furniture to entire fortifications."

	allowed_sexes = list(MALE, FEMALE)

	outfit = /datum/outfit/job/adventurer/mastercarpenter
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)
	maximum_possible_slots = 1
	pickprob = 15
	apprentice_name = "Carpenter Apprentice"

/datum/outfit/job/adventurer/mastercarpenter/pre_equip(mob/living/carbon/human/H)
	..()

	H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE) // They work at great heights.
	H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 4, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/craft/carpentry, 6, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/craft/engineering, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/labor/lumberjacking, 4, TRUE)

	head = pick(/obj/item/clothing/head/hatfur, /obj/item/clothing/head/hatblu, /obj/item/clothing/head/brimmed)
	neck = /obj/item/clothing/neck/coif
	armor = /obj/item/clothing/armor/leather/jacket
	pants = /obj/item/clothing/pants/trou
	shirt = /obj/item/clothing/shirt/undershirt/random
	wrists = /obj/item/clothing/wrists/bracers/leather
	shoes = /obj/item/clothing/shoes/boots/leather
	belt = /obj/item/storage/belt/leather
	beltr = /obj/item/storage/belt/pouch/coins/mid
	beltl = /obj/item/weapon/hammer/steel
	backl = /obj/item/storage/backpack/backpack
	backr = /obj/item/weapon/polearm/halberd/bardiche/woodcutter // A specialist in cutting trees would carry an impressive axe
	backpack_contents = list(/obj/item/flint = 1, /obj/item/weapon/knife/hunting = 1, /obj/item/key/artificer = 1)
	H.change_stat(STATKEY_STR, 2)
	H.change_stat(STATKEY_END, 2)
	H.change_stat(STATKEY_INT, 1)
	H.change_stat(STATKEY_CON, 1)
