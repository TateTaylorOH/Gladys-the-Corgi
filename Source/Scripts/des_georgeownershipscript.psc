Scriptname DES_GeorgeOwnershipScript extends ReferenceAlias  

Faction Property DES_GladysPlayerOwnershipFaction Auto
Scroll Property DES_GeorgeScroll auto
Armor Property DES_GladysGeorgeArmor auto
Quest Property DES_GladystheCorgi auto
Actor Property DES_Gladys auto

EVENT OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)

	DES_Gladys.UnequipItem(DES_GladysGeorgeArmor, true, true)
	DES_Gladys.RemoveItem(DES_GladysGeorgeArmor, 1, true)
	akItemReference.SetFactionOwner(DES_GladysPlayerOwnershipFaction)

ENDEVENT

EVENT OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)

	IF DES_Gladys.GetItemCount(DES_GeorgeScroll) == 1
		DES_Gladys.EquipItem(DES_GladysGeorgeArmor, true, true)
		RemoveInventoryEventFilter(DES_GeorgeScroll)
	ENDIF

ENDEVENT