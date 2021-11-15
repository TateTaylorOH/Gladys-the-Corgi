;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__0508E446 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
GladysAlias.AddInventoryEventFilter(DES_EmptyList)
akspeaker.EquipItem(CorgiArmor)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Armor Property CorgiArmor  Auto  

GlobalVariable Property ArmorEquipped  Auto  

Formlist Property DES_EmptyList auto

ReferenceAlias Property GladysAlias auto
