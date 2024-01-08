Scriptname DES_GladysStopFetching extends ReferenceAlias  

Package Property DES_GladysReturnPackage auto
Scroll Property DES_GeorgeScroll auto
GlobalVariable Property DES_GladysIsFetching auto

EVENT OnPackageEnd(Package akOldPackage)
	Actor DES_Gladys = self.getActorReference()
	IF akOldPackage == DES_GladysReturnPackage
		DES_Gladys.DropObject(DES_GeorgeScroll, 1)
		DES_GladysIsFetching.SetValue(0)
		self.trytoEvaluatePackage()
	ENDIF
ENDEVENT