Scriptname DES_FetchItemTracker extends Quest  

;-- Properties --------------------------------------
Int property NumItems auto
Int property FoundSomething = 0 auto conditional
referencealias property Dog auto
message property Doggy auto
form property Item auto
Bool property IsSearching = false auto conditional

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function OnUpdate()

	if FoundSomething == 0
		Doggy.Show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		IsSearching = false
		Dog.Clear()
	endIf
endFunction
