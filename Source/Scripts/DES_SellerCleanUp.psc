scriptName DES_SellerCleanUp extends ReferenceAlias

;-- Propeties ---------------------------------------

location property EastEmpireDock auto
quest property SellerQuest auto
objectreference property Seller auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Auto State Waiting
    ;do nothing
EndState

State BoughtDog
    Event OnLocationChange(Location akOldLoc, Location akNewLoc)
        if(akOldLoc.isSameLocation(EastEmpireDock) && !akNewLoc.isSameLocation(EastEmpireDock))
            utility.Wait(600.0)
            Seller.Disable()
            SellerQuest.SetStage(255)
        endif
    EndEvent
EndState