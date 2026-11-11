#include <sourcemod>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo =
{
	name = "Duck Fix.",
	author = "Kamay",
	description = "Duck Spamming fix.",
	version = "1.0.2",
	url = "http://steamcommunity.com/id/nullednull/"
};

public Action OnPlayerRunCmd(int client, int &buttons, int &impulse, float vel[3], float angles[3], int &weapon)
{
	if (!IsClientInGame(client)) 
	{
		return Plugin_Continue;
	}

	float DuckSpeed = GetEntPropFloat(client, Prop_Data, "m_flDuckSpeed");
	
	if (DuckSpeed < 7.0)
	{
		SetEntPropFloat(client, Prop_Send, "m_flDuckSpeed", 7.0, 0);
	}
	
	return Plugin_Continue;
}
