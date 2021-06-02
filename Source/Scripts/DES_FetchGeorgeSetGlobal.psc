Scriptname DES_FetchGeorgeSetGlobal extends ReferenceAlias  

;-- Properties --------------------------------------

Actor Property PlayerRef Auto
ReferenceAlias Property GladysAlias  Auto
ReferenceAlias  Property GeorgeAlias Auto
GlobalVariable Property Type Auto
Actor Property Gladys  Auto
Projectile Property GeorgeProjectile Auto

;-- Variables ---------------------------------------

;objectReference CastFromHereRef
;ObjectReference FlyingGeorge 
;float RadiusToFindGeorge = 5000.0

;-- Functions ---------------------------------------

Event OnInit()
    RegisterForAnimationEvent(Game.GetPlayer(), "MRh_SpellFire_Event")
endEvent
 
Event OnAnimationEvent(ObjectReference akSource, string asEventName)

	if (akSource == Game.GetPlayer()) && (asEventName == "MRh_SpellFire_Event")

	;CastFromHereRef = PlayerRef
	;FlyingGeorge = Game.FindClosestReferenceOfTypeFromRef(GeorgeProjectile, CastFromHereRef, RadiusToFindGeorge)
	;GeorgeAlias.ForceRefTo(FlyingGeorge)

		if Game.GetPlayer().HasLOS(Gladys) == false
			Gladys.MoveTo(PlayerRef, -100, 50, 0, true)
			(GetOwningQuest() as DES_GladysFollowerFramework).SetFollower(Gladys)
		endif

		Type.SetValue(1453)
		GladysAlias.tryToEvaluatePackage()

	endIf

endEvent
