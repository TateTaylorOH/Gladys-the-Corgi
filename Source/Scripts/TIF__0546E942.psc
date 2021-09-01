;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__0546E942 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Dog.ForceRefTo(akSpeaker as ObjectReference)
(self.GetOwningQuest() as DES_FetchItemTracker).IsSearching = true
(self.GetOwningQuest() as DES_FetchItemTracker).RegisterForSingleUpdate(25.0000)
Type.SetValue(11)
akSpeaker.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property Type auto

ReferenceAlias  Property Dog auto
