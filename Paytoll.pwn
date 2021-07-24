//paytoll with card by nap

#include <a_samp>
#include <zcmd>

new icontol1;
new icontol2;

enum pinfo
{
  pKartu,
  pSaldo,
};
new PlayerInfo[MAX_PLAYERS][pinfo]

public OnGameModeInit()
{
      CreateDynamicObject(997, 68.49069, -1536.228, 4.109338, 0.0000, 0.0000, -7.7589316);
	CreateDynamicObject(997, 68.49069, -1532.1078, 4.109338, 0.0000, 0.0000, -7.7599316);
	CreateDynamicObject(967, 70.17357, -1533.2672, 4.107106, 0.0000, 0.0000, -98.70023);
	CreateDynamicObject(967, 70.16656, -1535.4435, 4.107106, 0.0000, 0.0000, -276.00006);
	CreateDynamicObject(983, 68.686264, -1545.8867, 4.8470335, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(983, 68.686264, -1522.5923, 4.7302465, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(1215, 72.66369, -1532.4603, 4.7847443, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(1215, 72.351685, -1536.8268, 4.7847443, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(1238, 69.22624, -1537.2952, 4.2705336, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(1238, 70.188614, -1537.3914, 4.2705336, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(1238, 70.91202, -1531.3694, 4.2705336, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(1238, 70.91202, -1531.3694, 4.2705336, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(1238, 69.8849, -1531.2239, 4.2341595, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(1237, 73.921425, -1533.1426, 4.228798, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(1237, 73.57806, -1536.3699, 4.228798, 0.0000, 0.0000, 0.0000);
	icontol1 = CreateDynamicObject(988, 68.68334, -1528.5236, 4.7343483, 0.0000, 0.0000, -270.0000);
	icontol2 = CreateDynamicObject(988, 68.68334, -1539.8816, 4.809765, 0.0000, 0.0000, -90.0000);
}
CMD:paytol(playerid, params[])
	{
	if(IsPlayerInRangeOfPoint(playerid, 8, 71.42, -1528.82, 4.62))
    {
        if(IsPlayerInAnyVehicle(playerid))
        {
        MoveDynamicObject(icontol1, 68.68334, -1534.2196, 4.7343483, 2);
            SetTimer("ptoll1", 4000, 0);
            GivePlayerMoney(playerid,-500);
            GameTextForPlayer(playerid, "~r~$-500", 2000, 1);
            SendClientMessage(playerid, COLOR_RED, "Anda Membayar Tol Dengan Kartu Tol");
        }
    }
    return 1;
}
CMD:paytol2(playerid, params[])
	{
	if(IsPlayerInRangeOfPoint(playerid, 8, 65.92, -1539.41, 4.67))
    {
        if(IsPlayerInAnyVehicle(playerid))
        {
        MoveDynamicObject(icontol2, 68.68334, -1534.1855, 4.809765, 2);
            SetTimer("ptoll2", 4000, 0);
            GivePlayerMoney(playerid,-500);
            GameTextForPlayer(playerid, "~r~$-500", 2000, 1);
            SendClientMessage(playerid, COLOR_RED, "Anda Membayar Tol Dengan Kartu Tol");
        }
    }
    return 1;
}
