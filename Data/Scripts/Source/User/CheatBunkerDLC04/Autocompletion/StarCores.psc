Scriptname CheatBunkerDLC04:Autocompletion:StarCores extends cheatbunker:autocompletion Conditional

Quest Property TrackingQuest Auto Const
Int Property DebugStage = 1 Auto Const

Int Property RestartMainframeStage = 70 Auto Const

Bool Function hasFoundAllCores()
	return (TrackingQuest as DLC04:DLC04GZTrackingQuestScript).StarCores_InHoldingContainer.GetCount() == 0
EndFunction

Function findAllCores()
	TrackingQuest.SetStage(DebugStage)
EndFunction

Bool Function isQuestReady()
	return MyQuest.IsStageDone(RestartMainframeStage)
EndFunction

Bool Function hasWindowPassed()
	return hasFoundAllCores()
EndFunction

Function runBehavior()
	findAllCores()
	finish()
EndFunction

