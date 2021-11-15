;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname TIF__0503D437 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as DES_GladysFollowerFramework).SetFollower(akSpeaker)
akSpeaker.EvaluatePackage()
if (Game.IsPluginInstalled("Open Cities Skyrim.esp"))
  DESOCSResurrectGladys.Enable()
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

objectreference property DESOCSResurrectGladys auto
