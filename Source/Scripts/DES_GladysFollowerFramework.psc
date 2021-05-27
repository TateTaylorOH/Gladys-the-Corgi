Scriptname DES_GladysFollowerFramework extends Quest  

;-- Properties --------------------------------------

Actor Property PlayerREF Auto
ReferenceAlias Property FollowerAlias Auto
Faction Property DismissedFollowerFaction Auto
Faction Property CurrentHireling Auto
Message Property  FollowerDismissMessage Auto
Message Property  FollowerDismissMessageWedding Auto
Message Property  FollowerDismissMessageCompanions Auto
Message Property  FollowerDismissMessageCompanionsMale Auto
Message Property  FollowerDismissMessageCompanionsFemale Auto
Message Property  FollowerDismissMessageWait Auto
SetHirelingRehire Property HirelingRehireScript Auto

;Property to tell follower to say dismissal line
Int Property iFollowerDismiss Auto Conditional

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Function SetFollower(ObjectReference FollowerRef)
     actor FollowerActor = FollowerRef as Actor
     FollowerActor.RemoveFromFaction(DismissedFollowerFaction)
     If FollowerActor.GetRelationshipRank(PlayerREF) <3 && FollowerActor.GetRelationshipRank(PlayerREF) >= 0
          FollowerActor.SetRelationshipRank(PlayerREF, 3)
     EndIf
     FollowerActor.SetPlayerTeammate()
     ;FollowerActor.SetActorValue("Morality", 0)
     FollowerAlias.ForceRefTo(FollowerActor)
     FollowerActor.EvaluatePackage()
EndFunction
 
Function FollowerWait()
     actor FollowerActor = FollowerAlias.GetActorRef() as Actor
     FollowerActor.SetActorValue("WaitingForPlayer", 1)
     SetObjectiveDisplayed(10, abforce = true)
     ;follower will wait 3 days
     FollowerAlias.RegisterForSingleUpdateGameTime(72) 
EndFunction
 
Function FollowerFollow()
     actor FollowerActor = FollowerAlias.GetActorRef() as Actor
     FollowerActor.SetActorValue("WaitingForPlayer", 0)
     SetObjectiveDisplayed(10, abdisplayed = false)
     FollowerActor.EvaluatePackage()
EndFunction
 
Function DismissFollower(Int iMessage = 0, Int iSayLine = 1)
     If FollowerAlias && FollowerAlias.GetActorReference().IsDead() == False
          If iMessage == 0
               FollowerDismissMessage.Show()
          ElseIf iMessage == 1
               FollowerDismissMessageWedding.Show()
          ElseIf iMessage == 2
               FollowerDismissMessageCompanions.Show()
          ElseIf iMessage == 3
               FollowerDismissMessageCompanionsMale.Show()
          ElseIf iMessage == 4
               FollowerDismissMessageCompanionsFemale.Show()
          ElseIf iMessage == 5
               FollowerDismissMessageWait.Show()
          Else
              ;failsafe
              FollowerDismissMessage.Show()
          EndIf
          actor DismissedFollowerActor = FollowerAlias.GetActorRef() as Actor
          DismissedFollowerActor.StopCombatAlarm()
          DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)
          DismissedFollowerActor.SetPlayerTeammate(false)
          DismissedFollowerActor.RemoveFromFaction(CurrentHireling)
          DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)
          ;hireling rehire function
          HirelingRehireScript.DismissHireling(DismissedFollowerActor.GetActorBase())
          If iSayLine == 1
               iFollowerDismiss = 1
              DismissedFollowerActor.EvaluatePackage()
             ;Wait for follower to say line
             Utility.Wait(2)
          EndIf
             FollowerAlias.Clear()
             iFollowerDismiss = 0
             ;don't set count to 0 if Companions have replaced follower
          If iMessage == 2
               ;do nothing
          EndIf
     EndIf
EndFunction