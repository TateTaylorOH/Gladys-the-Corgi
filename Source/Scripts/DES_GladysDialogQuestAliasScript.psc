Scriptname DES_GladysDialogQuestAliasScript extends ReferenceAlias  

Faction Property CurrentHireling Auto
Message Property FollowerDismissMessage  Auto
Actor Property PlayerREF Auto

Event OnUpdateGameTime()
     ;kill the update if the follower isn't waiting anymore
     If Self.GetActorRef().GetActorValue("WaitingforPlayer") == 1
          ; debug.trace(self + "Dismissing the follower because he is waiting and 3 days have passed.")
          (GetOwningQuest() as DES_GladysFollowerFramework).DismissFollower(0,0)
     EndIf
EndEvent

Event OnUnload()
     ;if follower unloads while waiting for the player, wait three days then dismiss him.
     If Self.GetActorReference().GetActorValue("WaitingforPlayer") == 1
          (GetOwningQuest() as DES_GladysFollowerFramework).FollowerWait()
     EndIf
EndEvent

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
     If (akTarget == PlayerREF)
          ; debug.trace(self + "Dismissing follower because he is now attacking the player")
          (GetOwningQuest() as DES_GladysFollowerFramework).DismissFollower(0, 0)
     EndIf
EndEvent

Event OnDeath(Actor akKiller)
     ; debug.trace(self + "Clearing the follower because the player killed him.")
     Self.GetActorRef().RemoveFromFaction(CurrentHireling)
     Self.Clear()
EndEvent