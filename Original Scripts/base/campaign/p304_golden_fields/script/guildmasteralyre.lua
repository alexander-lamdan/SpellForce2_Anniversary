
State
{
	StateName = "MainState",
	
	OnToggleEvent
	{
		EventName = "OnOffDialog",
		OnConditions = 
		{              
			AND
			{
				EntityFlagIsFalse {Name = "ef_DialogOff"},
				-- grunds�tzliche Dialogfreischaltung
				
				OR
				{
					AvatarValueIsGreaterOrEqual{Name = "av_P304_MageGuildBonus", Value = 1 },
					-- GuildBonus>0
					
					AND
					{
						AvatarFlagIsTrue{Name = "af_P304_QuestForNessel"},
						EntityFlagIsFalse{Name = "ef_TalkedAboutNessel"},
					},
					-- Nesselquest aktiv und Satz noch nicht gesagt
					
					AND
					{
						AvatarFlagIsTrue {Name = "af_P304_HagardUnmasked"},
						AvatarFlagIsFalse{Name = "af_P304_GiveMageTroops"},
						AvatarValueIsEqual{Name = "av_P304_MageGiftGiven", Value = 0 },
						AvatarFlagIsFalse{Name = "af_P304_GiveMageTaskQuest"},
					},
					-- Hagard demaskiert, Truppen noch nicht �bergeben
					-- noch kein Task erbracht & Satz "Tut Dienste" noch nicht gesagt
					
					AND
					{
						AvatarFlagIsTrue {Name = "af_P304_HagardUnmasked"},
						AvatarFlagIsFalse{Name = "af_P304_GiveMageTroops"},
						AvatarValueIsGreater{Name = "av_P304_MageGiftGiven", Value = 0 },
					},
					-- Hagard demaskiert
					-- Task erbracht & Truppen noch nicht �bergeben
					
					
					AvatarFlagIsFalse{Name = "af_P304_AlyreKnown"},
					-- Alyre unbekannt
					
					EntityFlagIsFalse{Name = "ef_BaseInfoGiven"},
					-- Basis-Info noch nicht gegeben
					
					AND
					{
						AvatarFlagIsTrue{Name = "af_P304_TalkedWithIdara"},
						EntityFlagIsFalse{Name = "ef_HagardInfoGiven"},
					}, 
					-- Mit Idara gesprochen, aber Hagard-Info noch nicht bekommen
					
				},
			},
		},
		OnActions = 
		{
			DialogTypeSetMainQuest{},
    		DialogSetEnabled{},
		},
		OffConditions = 
		{
			NotAND
			{
				EntityFlagIsFalse {Name = "ef_DialogOff"},
				-- grunds�tzliche Dialogfreischaltung
				
				OR
				{
					AvatarValueIsGreaterOrEqual{Name = "av_P304_MageGuildBonus", Value = 1 },
					-- GuildBonus>0
					
					AND
					{
						AvatarFlagIsTrue{Name = "af_P304_QuestForNessel"},
						EntityFlagIsFalse{Name = "ef_TalkedAboutNessel"},
					},
					-- Nesselquest aktiv und Satz noch nicht gesagt
					
					AND
					{
						AvatarFlagIsTrue {Name = "af_P304_HagardUnmasked"},
						AvatarFlagIsFalse{Name = "af_P304_GiveMageTroops"},
						AvatarValueIsEqual{Name = "av_P304_MageGiftGiven", Value = 0 },
						AvatarFlagIsFalse{Name = "af_P304_GiveMageTaskQuest"},
					},
					-- Hagard demaskiert, Truppen noch nicht �bergeben
					-- noch kein Task erbracht & Satz "Tut Dienste" noch nicht gesagt
					
					AND
					{
						AvatarFlagIsTrue {Name = "af_P304_HagardUnmasked"},
						AvatarFlagIsFalse{Name = "af_P304_GiveMageTroops"},
						AvatarValueIsGreater{Name = "av_P304_MageGiftGiven", Value = 0 },
						AvatarFlagIsFalse{Name = "af_P304_GiveMageTaskQuest"},
					},
					-- Hagard demaskiert
					-- Task erbracht & Truppen noch nicht �bergeben
					
					
					AvatarFlagIsFalse{Name = "af_P304_AlyreKnown"},
					-- Alyre unbekannt
					
					EntityFlagIsFalse{Name = "ef_BaseInfoGiven"},
					-- Basis-Info noch nicht gegeben
					
					AND
					{
						AvatarFlagIsTrue{Name = "af_P304_TalkedWithIdara"},
						EntityFlagIsFalse{Name = "ef_HagardInfoGiven"},
					}, 
					-- Mit Idara gesprochen, aber Hagard-Info noch nicht bekommen
					
				},
			},
		},
		OffActions = 
		{
			DialogSetDisabled{},
		},
	},
	
	
	OnOneTimeEvent
	{
		Conditions =
		{
		},
		Actions = 
		{
			-- zu Beginn der Karte Dialog abschalten
			EntityFlagSetTrue {Name = "ef_DialogOff"},
		},
	},
	
	OnOneTimeEvent
	{
		Conditions = 
		{
			OR
			{
				MapFlagIsTrue{Name = "mf_EnableDialogAlyreRedmundFlannAfterHagardDialog"},
				
				MapFlagIsTrue{Name = "mf_MarcIsCheating"}, -- Cheat f�r Marc!
			},
		},
		Actions = 
		{
			-- sobald Spieler den Auftrag bekommt, die Gildenmeister zu fragen
			-- wird der Charakter freigeschaltet
			-- (schaltet auch Flann Gondersen frei)
			EntityFlagSetFalse {Name = "ef_DialogOff"},
		}, 
	},
	
--	OnOneTimeEvent
--	{
--		Conditions = 
--		{
--			MapFlagIsTrue{Name = "mf_MarcIsCheating"},
--		},
--		Actions = 
--		{
--			-- Cheat f�r Marc
--			EntityFlagSetFalse {Name = "ef_DialogOff"},
--		}, 
--	},
	
};