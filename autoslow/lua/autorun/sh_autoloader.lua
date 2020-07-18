/*
* Name: sh_autoloader.lua
* By: Bread
* For: b2r.online 
* Usage: Include server and client files
*/

if SERVER then
    include("player_slow/sh_slow.lua")
    include("player_slow/sh_slow_config.lua")
    include("player_slow/sv_slow.lua")
    AddCSLuaFile("player_slow/sh_slow.lua")
    AddCSLuaFile("player_slow/sh_slow_config.lua")
elseif CLIENT then
    include("player_slow/sh_slow.lua")
    include("player_slow/sh_slow_config.lua")
end