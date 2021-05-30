Scriptname DES_ChompScript extends Actor 

;-- Properties --------------------------------------

Sound Property Chomp  Auto
ObjectReference Property Gladys  Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	Chomp.play(Gladys)
EndEvent

