;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname QF_DES_SellerQuest_0506AD6E Extends Quest Hidden

;BEGIN ALIAS PROPERTY Seller
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Seller Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Gladys
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Gladys Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SellerQuest.Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property SellerQuest  Auto  
