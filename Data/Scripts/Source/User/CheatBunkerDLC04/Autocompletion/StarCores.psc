Scriptname CheatBunkerDLC04:Autocompletion:StarCores extends CheatBunker:Autocompletion Conditional

Quest Property DLC04GZTrackingQuest Auto Const Mandatory
Int Property DebugStage = 1 Auto Const

Function executeBehavior()
	DLC04GZTrackingQuest.SetStage(DebugStage)
	conclude()
EndFunction
