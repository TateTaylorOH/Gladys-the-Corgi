Scriptname DES_EquipEmptyHand extends ReferenceAlias  

;-- Properties --------------------------------------

Actor Property PlayerRef  Auto
Scroll Property GeorgeScroll  Auto
Armor Property EmptyHand Auto
Keyword Property GeorgeKeyword Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnObjectEquipped(Form akBase, ObjectReference akRef)
	if akBase.HasKeyword(GeorgeKeyword)
		PlayerRef.EquipItem(EmptyHand, true, true)
		;Debug.Notification("Player equips Empty Hand!")
	endif	
EndEvent

Event OnObjectUnequipped(Form akBase, ObjectReference akRef)
	if akBase.HasKeyword(GeorgeKeyword)
		PlayerRef.UnequipItem(EmptyHand, true, true)
		PlayerRef.RemoveItem(EmptyHand, 1, true)
		;Debug.Notification("Player unequips Empty Hand!")
	endif
EndEvent