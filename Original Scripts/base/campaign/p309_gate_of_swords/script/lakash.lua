
State
{
	StateName = "INIT",
	-- Wenn Spieler Rachequest hat werden Lakash und sein Schosshund b�se
	OnOneTimeEvent
	{
		Conditions =
		{
			QuestIsActive {Quest = "RevengeKillLakash"},
		},
		Actions = 
		{
			FigureTeamTransfer {Team = "tm_PitFighter"},
			FigureTeamTransfer {Tag = "LakashsWolf", Team = "tm_PitFighter"},
		}
	},
	
}