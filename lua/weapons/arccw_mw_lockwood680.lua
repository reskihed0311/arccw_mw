AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 70
SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "Lockwood 680"
SWEP.Trivia_Class = "Pump-Action Shotgun" -- "Submachine Gun"
SWEP.Trivia_Desc = "A powerful , light shotgun." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "Lockwood" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "12 Gauge" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "U.S.A" -- "Austria"
SWEP.Trivia_Year = nil -- 1968
SWEP.CanFireUnderwater = false


SWEP.Slot = 3

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_lockwood680.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!
SWEP.MirrorWorldModel = "models/weapons/arccw_mwr_lockwood680_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM


SWEP.WorldModelOffset =
{
    pos = Vector(-6, 4, -5.2),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}


SWEP.Damage = 17
SWEP.DamageMin = 2 -- damage done at maximum range

SWEP.Range = 30 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BUCKSHOT

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 6 -- DefaultClip is automatically set.



SWEP.Recoil = 4.5
SWEP.RecoilSide = 0.6
SWEP.RecoilRise = 1.5
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1-- random viewmodel offset when shooty
SWEP.ShotgunSpreadDispersion = 1 -- dispersion will cause pattern to increase instead of shifting


SWEP.Sway = 0.27




SWEP.Delay = 60 / 60 -- 60 / RPM.


SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }

}

SWEP.AccuracyMOA = 35 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 350 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 10-- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses
SWEP.Num = 12 -- number of shots per trigger pull.


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/lockwood680/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/lockwood680/fire_sup.wav"


SWEP.MuzzleEffect = "muzzleflash_g3"

SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellScale = 0.9
SWEP.ShellPhysScale = 1
SWEP.ShellPitch = 90
SWEP.ShellSounds = "autocheck"--ArcCW.ShellSoundsTable
SWEP.ShellRotate = 0
SWEP.ShellTime = 0.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = nil -- attachment on which coolview is affected by, default is muzzleeffect
SWEP.CamAttachment = nil -- if set, this attachment will control camera movement
SWEP.MuzzleFlashColor = Color(244, 209, 66)

SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.85
SWEP.ShootSpeedMult = 0.85


SWEP.IronSightStruct = {
    Pos = Vector(-3.52, 0, 1.44),
    Ang = Angle(0, 0, 0),
}


SWEP.SightTime = 0.20


SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "ar2"
SWEP.HoldtypeCustomize = "slam"
SWEP.HoldtypeSprintShoot = nil
SWEP.HoldtypeNPC = nil



SWEP.ManualAction = true -- pump/bolt action
SWEP.ShotgunReload = true

local shellin = {"weapons/lockwood680/shellin_1.wav", "weapons/lockwood680/shellin_2.wav", "weapons/lockwood680/shellin_3.wav", "weapons/lockwood680/shellin_4.wav", "weapons/lockwood680/shellin_5.wav"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        },
    ["holster"] = {
        Source = "holster",
        },
    ["draw"] = {
        Source = "draw",
        },
    ["fire"] = {
           Source = "fire",
           },
    ["fire_iron"] = {
           Source = "fire_iron",
           },
    ["fire_iron_empty"] = {
           Source = "fire",
           },
    ["sgreload_start"] = {
           Source = "reload_start",
           TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
           LHIK = true, -- basically disable foregrips on this anim
           LHIKIn = 0.1,
           LHIKOut = 0,
    },
    ["sgreload_finish_empty"] = {
        Source = "reload_end_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 1,
        SoundTable = {
            {s = "weapons/lockwood680/pumpback.wav", t = 0.15},
            {s = "weapons/lockwood680/pumpfwd.wav", t = 0.38},
        },
 },
    ["sgreload_finish"] = {
        Source = "reload_end",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4
 },
    ["sgreload_insert"] = {
       Source = "reload_loop",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played       LHIK = true, -- basically disable foregrips on this anim!
       LHIK = true,
       LHIKIn = 0,
       LHIKOut = 0,
       SoundTable = {	
        {s = shellin, t = 0.2},
       },
   },
   ["cycle"] = {
    Source = "cycle",
    ShellEjectAt = 0.20,
    SoundTable = {
        {s = "weapons/lockwood680/pumpback.wav", t = 0.12},
        {s = "weapons/lockwood680/pumpfwd.wav", t = 0.34},
    },
    },
    ["cycle_iron"] = {
        Source = "cycle_iron",
        ShellEjectAt = 0.20,
        SoundTable = {
            {s = "weapons/lockwood680/pumpback.wav", t = 0.12},
            {s = "weapons/lockwood680/pumpfwd.wav", t = 0.34},
        },
        },
   }


SWEP.DefaultBodygroups = "00000000000000000000000"


SWEP.AttachmentElements = {
    ["bar_custom"] = {
        VMBodygroups = {{ind = 2 , bg = 1}},
        AttPosMods = {
            [3] = {
              vpos = Vector(0, -0.2, 19.5),
                vang = Angle (90, 0, 90),
            },
            [5] = {
                vpos = Vector(0, -2.3, 23.2), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0 ,-90),
              }
        },
        
        
    }
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local atts = wep.Attachments

    if !IsValid(vm) then return end

    -- Call the base ModifyBodygroups function to apply AttachmentElements first
    if wep.BaseClass and wep.BaseClass.Hook_ModifyBodygroups then
        wep.BaseClass.Hook_ModifyBodygroups(wep, data)
    end

    -- Now, apply custom logic for optic attachments without overriding AttachmentElements
    local hasOptic = false

    -- Loop through all attachments to check for "optic" attachment
    for i, att in pairs(atts) do
        if att.Installed and ArcCW.AttachmentTable[att.Installed].Slot == "optic" then
            hasOptic = true
            break
        end
    end

    -- Apply additional bodygroup modifications based on optic presence
    if hasOptic then
        vm:SetBodygroup(1, 1)  -- Custom bodygroup change for optics
    end
end

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -3.2, 3.7), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Barrel", -- print name
        DefaultAttName = "LOCKWOOD Factory",
        Slot = {"bar_680"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        InstalledEles = {"bar_custom"},
        Offset = {
            vpos = Vector(3.55, -5.05, -13), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical", -- print name
        DefaultAttName = "None",
        Slot = {"tac"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.8, -1.7, 16.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 0),
        },
    },
    {
        PrintName = "Foregrip Slot", -- print name
        DefaultAttName = "Your hand",
        Slot = {"grip_mw"}, -- what kind of attachments can fit here, can be string or table
        Bone = "pump", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.85, -3.2, -18.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Default Flashider",
        Slot = {"muzzle_sg"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.3, 19.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0 ,-90),
        },
    },
   {
        PrintName = "Ammo Types", -- print name
        DefaultAttName = "Buckshot",
        Slot = {"sg_ammo"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
    },
}