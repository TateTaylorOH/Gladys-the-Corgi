Scriptname DES_JaySerpaCompatibilityScript extends Quest  

;-- Propeties ---------------------------------------

ActorBase Property Gladys  Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Function IntJaySerpaCompatibility()
;Debug.Notification("IntJaySerpaCompatibility has fired!")
FormList DogFormlist = Game.GetFormFromFile(0x013554F, "ImmersiveInteractions.esp") As FormList
    if (DogFormlist && !DogFormlist.hasForm(Gladys))
		DogFormlist.AddForm(Gladys)
		;Debug.Notification("Gladys has been added to the formlist!")
    endif
EndFunction

Event OnInit()
	;Debug.Notification("OnInit has fired!")
	IntJaySerpaCompatibility()
EndEvent

Event OnPlayerLoadGame()
	;Debug.Notification("OnPlayerLoadGame has fired!")
	IntJaySerpaCompatibility()
EndEvent