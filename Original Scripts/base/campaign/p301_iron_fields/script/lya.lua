-- Bl�mchenwachen spawnen erst wenn das Orakel gesagt hat geh Blumen pfl�cken
State
{
	StateName = "INIT",
	OnOneTimeEvent
	{
		Conditions =
		{
		},
		Actions =
		{
			FigureVanish {Tag = "Lya"}
		},
	},
	OnFigureSpawnOnlyWhenEvent
	{
		X = GetEntityX(),
		Y = GetEntityY(),
		Conditions = 
		{
			PlayerFigureIsInRange	{Range = 5, X = 93, Y = 453},
			MapFlagIsFalse {Name = "mf_P301_Mission"},
			MapFlagIsTrue {Name = "mf_P301_NeverTrue"},
		},
		Actions = 
		{
		},
	};
}