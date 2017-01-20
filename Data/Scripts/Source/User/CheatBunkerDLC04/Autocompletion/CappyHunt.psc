Scriptname CheatBunkerDLC04:Autocompletion:CappyHunt extends cheatbunker:autocompletion Conditional

Int[] Property Stages Auto Const
Int[] Property RequiredObjectives Auto Const

Bool Function foundAll()
	Int iCounter = 0
	While (iCounter < Stages.Length)
		if (!MyQuest.GetStageDone(Stages[iCounter]))
			return false
		endif
		iCounter += 1
	EndWhile

	return true
EndFunction

Function findAll()
	Int iCounter = 0
	While (iCounter < Stages.Length)
		MyQuest.SetStage(Stages[iCounter])
		iCounter += 1
	EndWhile
EndFunction

Bool Function isQuestReady()
	Int iCounter = 0
	While (iCounter < RequiredObjectives.Length)
		if (MyQuest.IsObjectiveDisplayed(RequiredObjectives[iCounter]))
			return true
		endif
		iCounter += 1
	EndWhile

	return false
EndFunction

Bool Function hasWindowPassed()
	return foundAll()
EndFunction

Function runBehavior()
	findAll()
	finish()
EndFunction
