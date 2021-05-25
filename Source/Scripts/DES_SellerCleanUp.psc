Scriptname DES_SellerCleanUp  Extends ReferenceAlias
Event OnLocationChange(Location EastEmpireDock, Location akNewLoc)
	Utility.Wait(600)
		If(SellerQuest.GetStageDone(10))
			Seller.Disable()
			SellerQuest.SetStage(255)
		EndIf
EndEvent

Quest Property SellerQuest  Auto  

ObjectReference Property Seller  Auto  

Location Property EastEmpireDock  Auto