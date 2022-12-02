;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname QF_DES_SellerQuest_0506AD6E Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Gladys
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Gladys Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Seller
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Seller Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
PlayerRef.AddItem(DES_GeorgeScroll)
Alias_Seller.TryToEvaluatePackage()
CleanupScript.GotoState("BoughtDog")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Alias_Gladys.GetActorReference().SetFactionRank(PetFramework_PetFaction, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

DES_SellerCleanUp Property CleanupScript  Auto

Faction Property PetFramework_PetFaction Auto

Actor Property PlayerRef Auto

Scroll Property DES_GeorgeScroll Auto
