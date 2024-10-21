
 -- DemonWhisper Spawned und vanished f�r die Outcries nach Cutscene II

State
{
	StateName = "DemonWhisperStart",
   	OnFigureSpawnOnlyWhenEvent
	{
		X = GetEntityX(),
		Y = GetEntityY(),
		Conditions = 
		{
			MapFlagIsTrue {Name = "mf_DemonKingDeath"},
		},
		Actions = 
		{
			MapFlagSetTrue {Name = "mf_DemonWhisperSpawn"},
		},
	},
	-- Sobald der Zwerg das portal erreicht hat verschwindet er.
	OnOneTimeEvent
	{
		Conditions = 
		{
			MapTimerIsElapsed {Name = "mt_DemonWhispervanish", Seconds = 20},
		},
		Actions = 
		{
			
			FigureVanish	{Tag = "DemonWhisper"},
		},
	},	
 
 
};
