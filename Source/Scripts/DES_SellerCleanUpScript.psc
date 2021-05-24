Scriptname DES_SellerCleanUpScript extends Quest  

Event OnLocationChange(Location EastEmpireDock, Location akNewLoc)
	If(SellerQuest.GetStageDone(0))
		Seller.Disable()
	EndIf
EndEvent

Quest Property SellerQuest  Auto  

ObjectReference Property Seller  Auto  

Location Property EastEmpireDock  Auto
