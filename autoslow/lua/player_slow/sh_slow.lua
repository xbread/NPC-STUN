/*
* Name: sh_slow.lua
* By: Bread
* For: b2r.online
* Usage: Backend code for the slow script
*/

function calculate_slow(target, dmg_info)
    if target:IsPlayer() and IsValid(target) and not dmg_info:IsExplosionDamage() and not dmg_info:IsFallDamage() and not dmg_info:GetInflictor():IsPlayer() then
        target:SetRunSpeed(target:GetRunSpeed() / slow_config.deduct_run)
        target:SetWalkSpeed(target:GetWalkSpeed() / slow_config.deduct_walk)

        if slow_config.chatprint then 
            target:ChatPrint("[B2R]: You have been stunned by a " .. dmg_info:GetInflictor():GetClass() .. " for " .. slow_config.slowtime .. " seconds")
        end 


        timer.Simple(slow_config.slowtime, function()
            target:SetWalkSpeed(GAMEMODE.Config.walkspeed)
            target:SetRunSpeed(GAMEMODE.Config.runspeed)
        end)
    end
end

hook.Add("EntityTakeDamage", "slower", calculate_slow)