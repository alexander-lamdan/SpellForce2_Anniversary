-- Shartruppe erst da, wenn SPieler zur�ckkommt auf Golden Fields
State
{
	StateName = "INIT",
	OnOneTimeEvent
	{
		--GotoState = "Guard",
		Conditions =
		{
			
		},
		Actions =
		{
		},
	},
	OnFigureSpawnOnlyWhenEvent
	{
		X = GetEntityX(),
		Y = GetEntityY(),
		Conditions = 
		{
			QuestIsSolved {Quest = "ForgeRing"},
		},
		Actions = 
		{
		},
	};
}