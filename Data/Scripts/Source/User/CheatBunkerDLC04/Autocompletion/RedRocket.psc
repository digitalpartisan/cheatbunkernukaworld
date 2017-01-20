Scriptname CheatBunkerDLC04:Autocompletion:RedRocket extends cheatbunker:autocompletion Conditional

WorkshopScript Property NukaWorldRedRocket Auto Const
ObjectReference Property MapMarker Auto Const

Bool Function playerTookOwnership()
	return NukaWorldRedRocket.OwnedByPlayer
EndFunction

Bool Function isQuestReady()
	return MyQuest.IsRunning() || MyQuest.IsCompleted()
EndFunction

Bool Function hasWindowPassed()
	return playerTookOwnership()
EndFunction

Function runBehavior()
	NukaWorldRedRocket.SetOwnedByPlayer(true)
	MapMarker.AddToMap(true)
	finish()
EndFunction
