/*
* Name: sh_slow.lua
* By: Bread
* For: b2r.online
* Usage: Backend code for the slow script
*/
local b_is_stunned = false

function calculate_slow(target, dmg_info)
    if target:IsPlayer() and IsValid(target) and not dmg_info:IsExplosionDamage() and not dmg_info:IsFallDamage() and not dmg_info:GetInflictor():IsPlayer() then
        if not b_is_stunned then
            target:SetRunSpeed(target:GetRunSpeed() / slow_config.deduct_run)
            target:SetWalkSpeed(target:GetWalkSpeed() / slow_config.deduct_walk)
            b_is_stunned = true
        end

        if slow_config.chatprint then
            target:ChatPrint("You have been stunned by a " .. dmg_info:GetInflictor():GetClass() .. " for " .. slow_config.slowtime .. " seconds")
        end

        if not b_is_stunned then return end

        timer.Create("SLOW_" .. target:SteamID(), slow_config.slowtime, 0, function()
            target:SetRunSpeed(target:GetRunSpeed() * slow_config.deduct_run)
            target:SetWalkSpeed(target:GetWalkSpeed() * slow_config.deduct_walk)
            b_is_stunned = false
        end)
   
    end
end

hook.Add("EntityTakeDamage", "slower", calculate_slow)
