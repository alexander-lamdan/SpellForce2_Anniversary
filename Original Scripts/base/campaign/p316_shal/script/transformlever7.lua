-- hier werden die Flags angegeben, die bestimmen welche anderen Hebel umgelegt werden
-- wenn der Spieler diesen hier bet�tigt
InfluenceLevers =
{
	MapFlagSetTrue	{Name = "mf_ToggleTransformLever4"},
	MapFlagSetTrue	{Name = "mf_ToggleTransformLever5"},
}

dofile(GetScriptPath() .. "TransformLeverShared.lua")
