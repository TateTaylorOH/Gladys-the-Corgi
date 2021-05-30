Scriptname DES_GeorgeMiscScript extends ObjectReference  

;-- Properties --------------------------------------

ReferenceAlias Property GeorgeAlias  Auto
Scroll Property GeorgeScroll  Auto  
Actor Property Gladys  Auto
GlobalVariable Property Type  Auto  

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnInit()
    GeorgeAlias.ForceRefTo(Self)
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
		akNewContainer.addItem(GeorgeScroll)
		Type.SetValue(0)
		UnregisterForUpdate()
	endIf
EndEvent