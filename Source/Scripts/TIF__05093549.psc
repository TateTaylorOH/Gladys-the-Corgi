;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname TIF__05093549 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
GladysAlias.AddInventoryEventFilter(DES_EmptyList)
akSpeaker.UnequipItem(DES_ArmoredGladys, true, true)
akSpeaker.RemoveItem(DES_ArmoredGladys, 1, true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property ArmorEquipped  Auto  

Armor Property DES_ArmoredGladys Auto

Formlist Property DES_EmptyList auto

ReferenceAlias Property GladysAlias auto
