;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__054F2368 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
GladysAlias.AddInventoryEventFilter(DES_EmptyList)
akSpeaker.UnequipItem(DES_BackpackGladys, true, true)
akSpeaker.RemoveItem(DES_BackpackGladys, 1, true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias property GladysAlias auto

Armor property DES_BackpackGladys auto

globalvariable property DES_CorgiBackpackEquipped auto

formlist property DES_Emptylist auto
