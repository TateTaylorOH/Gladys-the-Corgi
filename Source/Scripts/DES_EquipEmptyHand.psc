Scriptname DES_EquipEmptyHand extends Actor  

;-- Properties --------------------------------------

Actor Property PlayerRef  Auto
Scroll Property GeorgeScroll  Auto
Armor Property EmptyHand Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnObjectEquipped(Form akBase, ObjectReference akRef)

	if akBase == GeorgeScroll
		PlayerRef.EquipItem(EmptyHand, false, true)
	endif

EndEvent

Event OnObjectUnequipped(Form akBase, ObjectReference akRef)

	if akBase == GeorgeScroll
		PlayerRef.UnequipItem(EmptyHand, false, true)
	endif

EndEvent