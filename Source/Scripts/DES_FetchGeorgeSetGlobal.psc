Scriptname DES_FetchGeorgeSetGlobal extends ReferenceAlias  

;-- Properties --------------------------------------

Actor Property PlayerRef Auto
ReferenceAlias Property GladysAlias  Auto
GlobalVariable Property Type Auto
Actor Property Gladys  Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnInit()
    RegisterForAnimationEvent(Game.GetPlayer(), "BeginCastRight")
endEvent
 
Event OnAnimationEvent(ObjectReference akSource, string asEventName)
	if (akSource == Game.GetPlayer()) && (asEventName == "BeginCastRight")
		if Game.GetPlayer().HasLOS(Gladys) == false
			Gladys.MoveTo(PlayerRef, 50, 0, 0, true)
			(GetOwningQuest() as DES_GladysFollowerFramework).SetFollower(Gladys)
		endif
		Type.SetValue(1453)
		GladysAlias.tryToEvaluatePackage()
	endIf
endEvent
