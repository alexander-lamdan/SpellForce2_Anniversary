
-- Bl�mchenwachen spawnen erst wenn das Orakel gesagt hat geh Blumen pfl�cken
State
{
	StateName = "INIT",
	OnFigureSpawnOnlyWhenEvent
	{
		X = GetEntityX(),
		Y = GetEntityY(),
		Conditions = 
		{
			QuestIsActive {Quest = "SpeakToFalkmarAndIo"}
		},
		Actions = 
		{
		},
	};
}
	
