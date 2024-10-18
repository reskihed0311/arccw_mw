AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 70
SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "Expedite-12"
SWEP.Trivia_Class = "Semi-Auto Shotgun" -- "Submachine Gun"
SWEP.Trivia_Desc = "A powerful , light shotgun." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "EXPEDITE" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "12 Gauge" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "U.S.A" -- "Austria"
SWEP.Trivia_Year = nil -- 1968
SWEP.CanFireUnderwater = false


SWEP.Slot = 3

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_expedite12.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!
SWEP.MirrorWorldModel = "models/weapons/arccw_mwr_expedite12_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM


SWEP.WorldModelOffset =
{
    pos = Vector(-6, 4, -5.2),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}


SWEP.Damage = 25
SWEP.DamageMin = 9 -- damage done at maximum range

SWEP.Range = 80 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BUCKSHOT

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.



SWEP.Recoil = 4.5
SWEP.RecoilSide = 0.6
SWEP.RecoilRise = 1.5
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1-- random viewmodel offset when shooty


SWEP.Sway = 0.27




SWEP.Delay = 60 / 250 -- 60 / RPM.


SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }

}

SWEP.AccuracyMOA = 25-- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 230 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0-- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses
SWEP.Num = 6 -- number of shots per trigger pull.


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/expedite12/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/expedite12/fire_sil.wav"


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

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.9
SWEP.ShootSpeedMult = 0.85


SWEP.IronSightStruct = {
    Pos = Vector(-2.961, -1.861, 1.279),
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



SWEP.ManualAction = false -- pump/bolt action
SWEP.ShotgunReload = true

local shellin = {"weapons/expedite12/shellin_1.wav", "weapons/expedite12/shellin_2.wav", "weapons/expedite12/shellin_3.wav", "weapons/expedite12/shellin_4.wav", "weapons/expedite12/shellin_5.wav"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        },
        ["idle_empty"] = {
            Source = "idle_empty",
            },
    ["holster"] = {
        Source = "holster",
        },
    ["draw"] = {
        Source = "draw",
        },
        ["holster_empty"] = {
            Source = "holster_empty",
            },
        ["draw_empty"] = {
            Source = "draw_empty",
            },
    ["fire"] = {
           Source = "fire",
           ShellEjectAt = 0,
           },
            ["fire_empty"] = {
           Source = "fire_empty",
           ShellEjectAt = 0,
           },
    ["fire_iron"] = {
           Source = "fire_iron",
           ShellEjectAt = 0,
           },
    ["fire_iron_empty"] = {
           Source = "fire_empty",
           ShellEjectAt = 0,
           },
    ["sgreload_start"] = {
           Source = "reload_start",
           TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
           LHIK = true, -- basically disable foregrips on this anim
           LHIKIn = 0.1,
           LHIKOut = 0,
    },
    ["sgreload_start_empty"] = {
        Source = "reload_start_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true, -- basically disable foregrips on this anim
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
            {s = "weapons/expedite12/shellin_empty.wav", t = 0.7},
            {s = "weapons/expedite12/boltrel.wav", t = 1.15},
        }
 },
    ["sgreload_finish"] = {
        Source = "reload_end_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 1,
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
        {s = shellin, t = 0.23},
       },
   },
   }


SWEP.DefaultBodygroups = "00000000000000000000000"


SWEP.AttachmentElements = {
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
            vpos = Vector(0, -3, 2.8), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Foregrip Slot", -- print name
        DefaultAttName = "Your hand",
        Slot = {"grip_mw"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.85, -2.85, -7.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Default Flashider",
        Slot = {"muzzle_sg"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2, 22.9), -- offset that the attachment will be relative to the bone
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