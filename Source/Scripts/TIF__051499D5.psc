;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname TIF__051499D5 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
akSpeaker.DropObject((self.GetOwningQuest() as DES_FetchItemTracker).Item, (self.GetOwningQuest() as DES_FetchItemTracker).NumItems)
(self.GetOwningQuest() as DES_FetchItemTracker).FoundSomething = 0
(self.GetOwningQuest() as DES_FetchItemTracker).IsSearching = false
(self.GetOwningQuest() as DES_FetchItemTracker).UnregisterForUpdate()
Type.SetValue(0)
akSpeaker.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

globalvariable property Type auto
