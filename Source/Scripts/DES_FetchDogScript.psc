Scriptname DES_FetchDogScript extends ReferenceAlias  Conditional

;-- Properties --------------------------------------
quest property SelfQuest auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)

	(SelfQuest as DES_FetchItemTracker).Item = akBaseItem
	(SelfQuest as DES_FetchItemTracker).NumItems = aiItemCount
	(self.GetOwningQuest() as DES_FetchItemTracker).FoundSomething = 1
endFunction

; Skipped compiler generated GotoState

; Skipped compiler generated GetState

function OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, Bool abPowerAttack, Bool abSneakAttack, Bool abBashAttack, Bool abHitBlocked)

	if (SelfQuest as DES_FetchItemTracker).FoundSomething != 1
		if akAggressor
			(SelfQuest as DES_FetchItemTracker).UnregisterForUpdate()
			(SelfQuest as DES_FetchItemTracker).IsSearching = false
			self.Clear()
		endIf
	endIf
endFunction