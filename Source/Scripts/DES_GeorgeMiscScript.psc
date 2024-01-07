Scriptname DES_GeorgeMiscScript extends ObjectReference  

;-- Properties --------------------------------------

ReferenceAlias Property GeorgeAlias  Auto
Scroll Property GeorgeScroll  Auto  
Actor Property Gladys  Auto
GlobalVariable Property DES_GladysIsFetching  Auto  
Actor Property PlayerRef auto
ReferenceAlias Property GladysAlias Auto
Quest Property DES_GladystheCorgi Auto
Faction Property DES_GladysPlayerOwnershipFaction auto
ObjectReference Property DESOCSResurrectGladys Auto
Faction Property PetFramework_PetFollowingFaction auto
float gladysAngle = 180.0
float gladysDistance = 256.0

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

EVENT OnInit()
	GeorgeAlias.ForceRefTo(Self)
	GladysAlias.RemoveAllInventoryEventFilters()
	GladysAlias.AddInventoryEventFilter(GeorgeScroll)
	DES_GladysIsFetching.SetValue(1)
	GladysAlias.tryToEvaluatePackage()
		IF !PlayerRef.HasLOS(Gladys)
			IF (Gladys.GetFactionRank(PetFramework_PetFollowingFaction) == 0)
				(DES_GladysTheCorgi as PetFramework_PetQuest).FollowPlayer(Gladys)
			ENDIF
			float az = addAngles(PlayerRef.getAngleZ(), gladysAngle)
			Gladys.MoveTo(PlayerRef, gladysDistance * math.sin(az), gladysDistance * Math.cos(az), 0.0, true)
		ENDIF
	RegisterForSingleUpdate(30)
ENDEVENT

EVENT OnUpdate()
	Disable()
	Delete()
		IF Gladys.GetItemCount(GeorgeScroll) == 0
			IF PlayerRef.GetItemCount(GeorgeScroll) == 0
				Gladys.AddItem(GeorgeScroll, 1, true)
			ENDIF
		ENDIF
	DES_GladysIsFetching.SetValue(0)
	GladysAlias.tryToEvaluatePackage()
ENDEVENT

EVENT OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akNewContainer
		akNewContainer.removeItem(self, abSilent = true)
		akNewContainer.addItem(GeorgeScroll)
		Disable()
		Delete()
		UnregisterForUpdate()
		DES_GladysIsFetching.SetValue(0)
		GladysAlias.tryToEvaluatePackage()
	endIf
ENDEVENT

float FUNCTION addAngles(float angle, float turn)
{This function controls the angles at which Gladys is spawned if the Player doesn't currently have LOS on her.}
    angle += turn
    while(angle >= 360.0)
        angle -= 360.0
    endWhile
    while(angle < 0.0)
        angle += 360.0
    endWhile
    return angle
ENDFUNCTION