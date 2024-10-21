
 

State
{
	StateName = "CultStart",
--*******************************************************
--***                                                 ***
--***         			NQ Der Kult	                  ***
--***                                                 ***
--******************************************************* 
-- Der Spieler hat beide B�cher gefunden und kommt auf die Westguard zur�ck.
	
	OnOneTimeEvent
   	{
   		Conditions =
   		{
   			AvatarHasItemMisc	{ItemId = 159, Amount = 1},
   			QuestIsActive	{Quest = "CultProphecyOfTheStewart"},
   		},
   		Actions =
   		{
   			QuestSetSolved {Quest = "CultProphecyOfTheStewart"},
   		}	
	},
	
	
	OnOneTimeEvent
   	{
   		Conditions =
   		{
   			QuestIsSolved {Quest = "CultBookOfTheRedHorde"},
   			QuestIsSolved {Quest = "CultProphecyOfTheStewart"},
   			QuestIsNotActive {Quest = "CultReturnBooksThur"},
   			
   		},
   		Actions =
   		{
   			QuestSetActive {Quest = "CultReturnBooksThur"},
   			
   			
   		}	
	},

 
};
