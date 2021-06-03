Scriptname DES_FetchGeorgeSetGlobal extends ReferenceAlias  

;-- Properties --------------------------------------

Actor Property Gladys  Auto
Actor Property PlayerRef Auto
GlobalVariable Property Type Auto
Projectile Property GeorgeProjectile Auto
ReferenceAlias  Property GeorgeAlias Auto
ReferenceAlias Property GladysAlias  Auto
Scroll Property GeorgeScroll Auto
Keyword Property GeorgeKeyword Auto
Armor Property EmptyHand Auto

;-- Variables ---------------------------------------

;float RadiusToFindGeorge = 5000.0
;objectReference CastFromHereRef
;ObjectReference FlyingGeorge 

;-- Functions ---------------------------------------

Event OnInit()

	RegisterForAnimationEvent(Game.GetPlayer(), "MRh_SpellFire_Event")
	RegisterForAnimationEvent(Game.GetPlayer(), "") 

endEvent

Event OnAnimationEvent(ObjectReference akSource, string asEventName)
	if PlayerRef.isEquipped(EmptyHand)
		if (akSource == Game.GetPlayer()) && (asEventName == "MRh_SpellFire_Event")
			Type.SetValue(1453)
			GladysAlias.tryToEvaluatePackage()
			;Debug.notification("Gladys' AI package has been updated!")
			;CastFromHereRef = PlayerRef
			;FlyingGeorge = Game.FindClosestReferenceOfTypeFromRef(GeorgeProjectile, CastFromHereRef, RadiusToFindGeorge)
			;GeorgeAlias.ForceRefTo(FlyingGeorge)
			;Debug.notification("GeorgeProjectile has been forced to alias!")
			if Game.GetPlayer().HasLOS(Gladys) == false
				Gladys.MoveTo(PlayerRef, -50, 50, 0, true)
				(GetOwningQuest() as DES_GladysFollowerFramework).SetFollower(Gladys)
				;Debug.notification("Gladys has been summoned!")
			EndIf
			Utility.Wait(0.3)
			Game.DisablePlayerControls(false, true)
			Utility.Wait(0.1)
			Game.EnablePlayerControls()
			;Debug.notification("Fetch as been completed!")
		endif
	endif
endEvent