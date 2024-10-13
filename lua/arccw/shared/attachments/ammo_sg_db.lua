--stolen from uc , love you guys


att.PrintName = "Dragon's Breath"

att.SortOrder = 0.5
att.Description = "Burn people and whatnot."
att.Desc_Pros = {
    "Ignites folks on fires",
}
att.Desc_Cons = {
    "Low Accuracy.",
    "Extreme fallof.",
    "Decreases pellet count to 4."
}
att.Slot = {"sg_ammo"}
att.AutoStats = true

att.Override_Num  = 4

-- zombies don't take damage from DMG_BURN (hardcoded to set them on fire)
local dontburn = {
    npc_zombie = true,
    npc_zombie_torso = true,
    npc_zombine = true,
    npc_fastzombie = true,
    npc_fastzombie_torso = true,
    npc_headcrab = true,
    npc_headcrab_fast = true,
    npc_headcrab_black = true,
}

att.Hook_PhysBulletHit = function(wep, data)
    if SERVER and data.tr.Entity then
        local d = data.bullet.Travelled * ArcCW.HUToM
        local dur = 6 - d * 2 / wep.Range
        if dur > 0 then
            data.tr.Entity:Extinguish()
            data.tr.Entity:Ignite(dur)
        end

        local delta = math.Clamp(d / data.bullet.Range, 0, 1)

        -- Impact is disabled (no bullet holes) so we do damage ourselves
        local dmg = DamageInfo()
        dmg:SetAttacker(data.bullet.Attacker)
        dmg:SetInflictor(data.bullet.Weapon)
        dmg:SetDamage(Lerp(delta, data.bullet.DamageMax, data.bullet.DamageMin))
        dmg:SetDamagePosition(data.bullet.Pos)
        dmg:SetDamageForce(data.bullet.Vel)
        dmg:SetDamageType(dontburn[data.tr.Entity:GetClass()] and DMG_BUCKSHOT or (DMG_BURN + DMG_BUCKSHOT))

        data.tr.Entity:TakeDamageInfo(dmg)
    end

    local effect = EffectData()
    effect:SetOrigin(data.tr.HitPos)
    util.Effect("StunstickImpact",effect)
    
    if data.tr.HitWorld then
        util.Decal("FadingScorch",data.tr.HitPos - data.tr.HitNormal,data.tr.HitPos + data.tr.HitNormal)
    end
end

att.Override_PhysBulletImpact = false

att.Override_DamageType = DMG_BURN + DMG_BUCKSHOT

att.Override_HullSize = 2
att.Override_HullSize_Priority = 100
att.Add_AccuracyMOA = 35
att.Mult_Damage = .5
att.Mult_DamageMin = .5

att.Override_AlwaysPhysBullet = true
att.Override_PhysBulletMuzzleVelocity = 100
att.Mult_PhysBulletGravity = 0.75
att.Override_PhysBulletDrag = 4



