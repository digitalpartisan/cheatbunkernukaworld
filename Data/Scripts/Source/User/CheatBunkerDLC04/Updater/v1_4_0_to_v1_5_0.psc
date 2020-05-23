Scriptname CheatBunkerDLC04:Updater:v1_4_0_to_v1_5_0 extends chronicle:package:update

CheatBunker:WorldSpace Property CheatBunkerDLC04WorldspaceNukaWorld Auto Const Mandatory

Function updateLogic()
	CheatBunkerDLC04WorldspaceNukaWorld.Start()
	sendSuccess()
EndFunction
