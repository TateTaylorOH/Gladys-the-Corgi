Scriptname DES_FetchItemTracker extends Quest Conditional

;-- Properties --------------------------------------

Int property NumItems auto
referencealias property Dog auto
message property Doggy auto
form property Item auto
Int property FoundSomething = 0 auto conditional
Bool property IsSearching = false auto conditional

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function OnUpdate()

	if FoundSomething == 0
		Doggy.Show()
		IsSearching = false
		Dog.Clear()
	endIf
endFunction
