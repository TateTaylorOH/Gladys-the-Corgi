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
		Game.GetPlayer().EquipItem(EmptyHand, true, true)
		;Debug.Notification("Player equips Empty Hand!")
	endif	
EndEvent

Event OnObjectUnequipped(Form akBase, ObjectReference akRef)
	if akBase.HasKeyword(GeorgeKeyword)
		Game.GetPlayer().UnequipItem(EmptyHand, true, true)
		Game.GetPlayer().RemoveItem(EmptyHand)
		;Debug.Notification("Player unequips Empty Hand!")
	endif
EndEvent