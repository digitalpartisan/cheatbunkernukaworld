Scriptname CheatBunkerDLC04:Autocompletion:BotParts extends cheatbunker:autocompletion Conditional

GlobalVariable[] Property Flags Auto Const

Bool Function isUnlocked(GlobalVariable gvValue)
	return gvValue.GetValue() > 0
EndFunction

Bool Function unlock(GlobalVariable gvValue)
	gvValue.SetValue(1)
EndFunction

Bool Function hasUnlockedAll()
	Int iCounter = 0
	While (iCounter < Flags.Length)
		if (!isUnlocked(Flags[iCounter]))
			return false
		endif
		iCounter += 1
	EndWhile

	return true
EndFunction

Function unlockAll()
	Int iCounter = 0
	While (iCounter < Flags.Length)
		unlock(Flags[iCounter])
		iCounter += 1
	EndWhile
EndFunction

Bool Function isQuestReady()
	return MyQuest.IsRunning() || MyQuest.IsCompleted()
EndFunction

Bool Function hasWindowPassed()
	return hasUnlockedAll()
EndFunction

Function runBehavior()
	unlockAll()
	finish()
EndFunction
