
--Momentan als ersatz f�r einen FigureFollow
State
{
	StateName = "LelaStart",
	--Outcry von Jandrim und Avatar sobald Lela davonl�uft.
    OnOneTimeEvent
    {
    	 Conditions =
    	{
   			MapFlagIsTrue{Name = "mf_LelaWalkHome"},
   			AvatarIsNotTalking{}, GameInterfaceIsVisible{}, -- die beiden geh�ren zusammen, deswegen beide in einer zeile!
   			
   		},
   		Actions =
   		{
   			DialogSetDisabled	{Tag = "Lela"},	
   			MapTimerStart	{Name = "mt_LelaWalkNow"},
       	},
    },
    
     OnOneTimeEvent
    {
    	 Conditions =
    	{
   			MapFlagIsTrue{Name = "mf_LelaWalkHome"},
   			AvatarIsNotTalking{}, GameInterfaceIsVisible{}, -- die beiden geh�ren zusammen, deswegen beide in einer zeile!
   			FigureIsAlive	{Tag = "Jandrim"},
   		},
   		Actions =
   		{
   			FigureOutcry	{Tag = "Jandrim", TextTag = "Jandrim03"},
			FigureOutcry	{Tag = "pl_HumanAvatar", TextTag = "Avatar01"},
       	},
    },

};
