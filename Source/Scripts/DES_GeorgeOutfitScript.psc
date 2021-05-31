Scriptname DES_GeorgeOutfitScript extends ReferenceAlias  

;-- Properties --------------------------------------

Scroll Property GeorgeScroll  Auto
GlobalVariable Property GladysArmorValue  Auto
Outfit Property CorgiNakedGeorge  Auto
Outfit Property CorgiArmoredGeorge  Auto
Outfit Property CorgiNaked  Auto
Outfit Property CorgiArmored  Auto
Actor Property Gladys  Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnInit()
	AddInventoryEventFilter(GeorgeScroll)
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
Int GlobalNumber = GladysArmorValue.GetValueInt()
if (GlobalNumber == 1)
	Gladys.SetOutfit(CorgiArmoredGeorge)
	;Debug.Notification("CorgiArmoredGeorge has been equipped!")
ElseIf (GlobalNumber == 0)
	Gladys.SetOutfit(CorgiNakedGeorge)
	;Debug.Notification("CorgiNakedGeorge has been equipped!")
EndIf
EndEvent

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
Int GlobalNumber = GladysArmorValue.GetValueInt()
if (GlobalNumber == 1)
	Gladys.SetOutfit(CorgiArmored)
	;Debug.Notification("CorgiArmored has been equipped!")
ElseIf (GlobalNumber == 0)
	Gladys.SetOutfit(CorgiNaked)
	;Debug.Notification("CorgiNaked has been equipped!")
EndIf
EndEvent