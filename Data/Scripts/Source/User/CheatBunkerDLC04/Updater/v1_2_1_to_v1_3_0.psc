Scriptname CheatBunkerDLC04:Updater:v1_2_1_to_v1_3_0 extends CheatBunker:PackageUpdater

CheatBunker:Package Property CheatBunkerDLC04Package Auto Const Mandatory

Function updateBehavior()
	CheatBunker:Autocompletion.retrofitPackage(CheatBunkerDLC04Package)
EndFunction