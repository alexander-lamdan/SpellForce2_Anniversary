
State
{
	StateName = "INIT",

	
	OnFigureSpawnOnlyWhenEvent
	{
		
		X = GetEntityX(),
		Y = GetEntityY(),
		Conditions = 
		{
			AvatarIsNotTalking{}, GameInterfaceIsVisible{}, -- die beiden geh�ren zusammen, deswegen beide in einer zeile!
			MapFlagIsTrue{Name = "mf_CultisAttack"},
		},
		Actions = 
		{
			MapFlagSetTrue{Name = "mf_Cultist02Alive"},
		},
		
	},

};



