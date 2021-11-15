Scriptname DES_ChompScript extends Actor 

;-- Properties --------------------------------------

Sound Property Chomp  Auto
ObjectReference Property Gladys  Auto
Spell Property DES_GladysBlessing auto
Message Property DES_GladysBlessingMessage auto
Actor property PlayerRef auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	Chomp.play(Gladys)
	PlayerRef.DispelSpell(DES_GladysBlessing)
	DES_GladysBlessing.Cast(PlayerRef)
	DES_GladysBlessingMessage.Show()
EndEvent

