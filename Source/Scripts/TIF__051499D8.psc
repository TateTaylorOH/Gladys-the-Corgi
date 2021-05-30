;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname TIF__051499D8 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Type.SetValue(11)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Dog.ForceRefTo(akSpeaker as ObjectReference)
(self.GetOwningQuest() as DES_FetchItemTracker).IsSearching = true
(self.GetOwningQuest() as DES_FetchItemTracker).RegisterForSingleUpdate(25.0000)
Gladys.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

referencealias property Dog  Auto

globalvariable property type auto

Actor Property Gladys  Auto  
