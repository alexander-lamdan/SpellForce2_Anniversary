
-- Sammelskript, damit der Spieler die Bluemchen pf�lcken kann
State
{
	StateName = "INIT",
	OnOneTimeEvent
	{
		GotoState = "Collect",
		Conditions =
		{
			AvatarFlagIsTrue {Name = "af_P309_CutsceneOracleEnd"},
		},
		Actions =
		{
		},
	},
}
	
-- Jetzt l�uft der Auftrag, die Blumen k�nnen gel�scht werden
State
{
	StateName = "Collect",
	-- Blumen l�schen, wenn der Spieler da ist und dessen Counter erh�hen
	OnOneTimeEvent
	{
		Conditions =
		{
			FigureIsInRange {Tag = "pl_HumanAvatar", Range = 5, X = GetEntityX(), Y = GetEntityY()},
			QuestIsActive {Quest = "FindFlowers"},
			EntityFlagIsFalse {Name = "ef_P309_FlowerPicked"}
		},
		Actions =
		{
			-- Der Spieler ist da, also l�sch ich mich mal
			ObjectVanish {Tag = "Kackeblume" .. nummer},
			MapValueAdd {Name = "mv_P309_PlayerFlowers", Value = 1},
			EntityFlagSetTrue {Name = "ef_P309_FlowerPicked"},
			AvatarItemMiscGive	{Player = "default", ItemId = 75, Amount = 1},
		},
	},
	OnOneTimeEvent
	{
		Conditions =
		{
			FigureIsInRange {Tag = "Mardrag", Range = 5, X = GetEntityX(), Y = GetEntityY()},
			QuestIsActive {Quest = "FindFlowers"},
			EntityFlagIsFalse {Name = "ef_P309_FlowerPicked"}
		},
		Actions =
		{
			-- Der Mardrag ist da, also l�sch ich mich mal
			ObjectVanish {Tag = "Kackeblume" .. nummer},
			MapValueAdd {Name = "mv_P309_MardragFlowers", Value = 1},	
			EntityFlagSetTrue {Name = "ef_P309_FlowerPicked"}
		},
	},
	
}