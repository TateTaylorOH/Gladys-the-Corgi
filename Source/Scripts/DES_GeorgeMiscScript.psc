Scriptname DES_GeorgeMiscScript extends ObjectReference  

;-- Properties --------------------------------------

ReferenceAlias Property GeorgeAlias  Auto
Scroll Property GeorgeScroll  Auto  
Actor Property Gladys  Auto
GlobalVariable Property Type  Auto  
Actor Property PlayerRef auto
ReferenceAlias Property GladysAlais Auto
Quest Property DES_GladystheCorgi Auto
Faction Property CurrentFollowerFaction auto
Faction Property DES_GladysPlayerOwnershipFaction auto
ObjectReference Property DESOCSResurrectGladys Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

EVENT OnInit()
Self.SetFactionOwner(DES_GladysPlayerOwnershipFaction)
GeorgeAlias.ForceRefTo(Self)
(DES_GladystheCorgi as DES_GladysFollowerFramework).SetFollower(Gladys)
(DES_GladystheCorgi as DES_GladysFollowerFramework).FollowerFollow()
	if (Game.IsPluginInstalled("Open Cities Skyrim.esp"))
		DESOCSResurrectGladys.Enable()
	endIf
GladysAlais.RemoveAllInventoryEventFilters()
GladysAlais.AddInventoryEventFilter(GeorgeScroll)
Type.SetValue(1453)
GladysAlais.tryToEvaluatePackage()
	IF PlayerRef.HasLOS(Gladys) == false
		Gladys.Resurrect()
		Gladys.MoveTo(PlayerRef, -50, 50, 0, true)
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
ENDEVENT

EVENT OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akNewContainer
		akNewContainer.removeItem(self, abSilent = true)
		akNewContainer.addItem(GeorgeScroll, abSilent = true)
		Disable()
		Delete()
		UnregisterForUpdate()
	endIf
ENDEVENT