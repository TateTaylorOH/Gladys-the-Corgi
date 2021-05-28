Scriptname DES_ChompScript extends Actor 

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	Chomp.play(Gladys)
EndEvent

Sound Property Chomp  Auto

ObjectReference Property Gladys  Auto