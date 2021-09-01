Scriptname DES_GeorgeOwnershipScript extends ReferenceAlias  

Faction Property DES_GladysPlayerOwnershipFaction Auto
Scroll Property DES_GeorgeScroll auto
Outfit Property DES_GladysOutfitGeorge auto
Outfit Property DES_GladysArmorGeorge auto
GlobalVariable Property DES_CorgiArmorEquipped auto
Outfit Property DES_GladysOutfit auto
Outfit Property DES_GladysArmor auto
Actor Property DES_Gladys auto

EVENT OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	IF DES_CorgiArmorEquipped.GetValue() == 0
		DES_Gladys.SetOutfit(DES_GladysOutfit)
	ENDIF
	IF DES_CorgiArmorEquipped.GetValue() == 1
		DES_Gladys.SetOutfit(DES_GladysArmor)
	ENDIF
	akItemReference.SetFactionOwner(DES_GladysPlayerOwnershipFaction)
ENDEVENT

EVENT OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	IF DES_CorgiArmorEquipped.GetValue() == 0
		DES_Gladys.SetOutfit(DES_GladysOutfitGeorge)
	ENDIF
	IF DES_CorgiArmorEquipped.GetValue() == 1
		DES_Gladys.SetOutfit(DES_GladysArmorGeorge)
	ENDIF
	RemoveInventoryEventFilter(DES_GeorgeScroll)
ENDEVENT