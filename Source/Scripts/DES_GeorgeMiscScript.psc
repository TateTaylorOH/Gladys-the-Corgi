Scriptname DES_GeorgeMiscScript extends ObjectReference  

;-- Properties --------------------------------------

ReferenceAlias Property GeorgeAlias  Auto
Scroll Property GeorgeScroll  Auto  
Actor Property Gladys  Auto
GlobalVariable Property Type  Auto  
Actor Property PlayerRef auto
ReferenceAlias Property GladysAlais Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnInit()
GeorgeAlias.ForceRefTo(Self)
Type.SetValue(1453)
GladysAlais.tryToEvaluatePackage()
	if PlayerRef.HasLOS(Gladys) == false
		Gladys.MoveTo(PlayerRef, -50, 50, 0, true)
	EndIf
RegisterForSingleUpdate(30)
EndEvent

Event OnUpdate()
	Disable()
	Delete()
	Gladys.AddItem(GeorgeScroll, 1, true)
EndEvent

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akNewContainer
		akNewContainer.removeItem(self, abSilent = true)
		akNewContainer.addItem(GeorgeScroll, abSilent = true)
		UnregisterForUpdate()
	endIf
EndEvent