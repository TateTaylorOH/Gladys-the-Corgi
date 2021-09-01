;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname TIF__0546E957 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Dog.ForceRefTo(akSpeaker as ObjectReference)
(self.GetOwningQuest() as DES_FetchItemTracker).IsSearching = true
(self.GetOwningQuest() as DES_FetchItemTracker).RegisterForSingleUpdate(25.0000)
Type.SetValue(19)
akSpeaker.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property Type Auto

ReferenceAlias Property Dog Auto
