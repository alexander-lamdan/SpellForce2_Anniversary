
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
		},
		GotoState = "MainState"
	},
}

State
{
	StateName = "MainState",
	
	-- zu Beginn abschalten
	OnOneTimeEvent
	{
		Conditions =
		{
		},
		Actions =
		{
			DialogSetDisabled{},
		},
	},
	
	OnOneTimeEvent
	{
		Conditions =
		{
			-- Urgi zittert und friert und hat gesagt, da� er einen W�rmetrank braucht
			MapValueIsEqual{Name = "mv_UrgiState", Value = 2},
		},
		Actions =
		{
			DialogTypeSetMainQuest{},
    		DialogSetEnabled{},
    	},
    },
    
    OnOneTimeEvent
    {
    	-- sobald der Trank f�r Urgi hergestellt wurde, wird der Kessel abgeschaltet
    	Conditions =
    	{
    		MapFlagIsTrue{Name = "mf_UrgiLiquidMade"},
    	},
    	Actions =
    	{
    		DialogSetDisabled{},
    	},
    },
    

}
