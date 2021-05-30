Scriptname DES_FetchGeorgeSetGlobal extends ReferenceAlias  

;-- Properties --------------------------------------

Actor Property PlayerRef Auto
GlobalVariable Property Type Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnInit()
    RegisterForAnimationEvent(Game.GetPlayer(), "BeginCastRight")
endEvent
 
Event OnAnimationEvent(ObjectReference akSource, string asEventName)
     if (akSource == Game.GetPlayer()) && (asEventName == "BeginCastRight")
           Type.SetValue(1453)
     endIf
endEvent
