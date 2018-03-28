Scriptname CheatBunkerDLC04:Autocompletion:RedRocket extends CheatBunker:Autocompletion Conditional

WorkshopScript Property NukaWorldRedRocket Auto Const
ObjectReference Property MapMarker Auto Const

Bool Function canExecuteLogic()
	return getQuest().IsCompleted() && !NukaWorldRedRocket.OwnedByPlayer
EndFunction

Function rexecuteBehavior()
	NukaWorldRedRocket.SetOwnedByPlayer(true)
	MapMarker.AddToMap(true)
	conclude()
EndFunction
