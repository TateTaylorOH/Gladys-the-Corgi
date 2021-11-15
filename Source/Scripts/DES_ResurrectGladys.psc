Scriptname DES_ResurrectGladys extends ObjectReference  

Event OnTriggerEnter(ObjectReference akActionRef)

if gladys.IsPlayerTeammate()
	gladys.resurrect()
endif

endevent

Actor Property Gladys auto