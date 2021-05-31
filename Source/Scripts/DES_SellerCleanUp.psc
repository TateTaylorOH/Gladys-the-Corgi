scriptName DES_SellerCleanUp extends ReferenceAlias

;-- Propeties ---------------------------------------

location property EastEmpireDock auto
quest property SellerQuest auto
objectreference property Seller auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function OnLocationChange(location EastEmpireDock, location akNewLoc)

	utility.Wait(600 as Float)
	if SellerQuest.GetStageDone(10)
		Seller.Disable()
		SellerQuest.SetStage(255)
	endIf
endFunction
