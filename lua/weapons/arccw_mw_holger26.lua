AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 65
SWEP.SubCategory = "Light Machine Guns"

SWEP.PrintName = "Holger 26 LSW"
SWEP.Trivia_Class = "Light Support Weapon" -- "Submachine Gun"
SWEP.Trivia_Desc = "The Holger LSW." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "HOLGER Manufacturing" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "5.56x45MM" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "U.S.A" -- "Austria"
SWEP.Trivia_Year = nil -- 1968


SWEP.Slot = 2

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_holger26.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!


SWEP.WorldModelOffset =
{
    pos = Vector(-8, 4.8, -6),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}

SWEP.Damage = 36
SWEP.DamageMin = 28 -- damage done at maximum range

SWEP.Range = 850 -- in METRES
SWEP.Penetration = 13
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 60 -- DefaultClip is automatically set.



SWEP.Recoil = 0.58
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 0.2-- random viewmodel offset when shooty


SWEP.Sway = 0.6


SWEP.Delay = 60 / 750 -- 60 / RPM.


SWEP.Firemodes = {
    {
    Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }

}

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 750 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 500 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/holger26/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/holger26/fire_sup.wav"


SWEP.MuzzleEffect = "muzzleflash_6"

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1
SWEP.ShellPhysScale = 1
SWEP.ShellPitch = 100
SWEP.ShellSounds = "autocheck"--ArcCW.ShellSoundsTable
SWEP.ShellRotate = 0
SWEP.ShellTime = 0.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = nil -- attachment on which coolview is affected by, default is muzzleeffect
SWEP.CamAttachment = nil -- if set, this attachment will control camera movement
SWEP.MuzzleFlashColor = Color(244, 209, 66)

SWEP.SpeedMult = 0.75
SWEP.SightedSpeedMult = 0.70
SWEP.ShootSpeedMult = 0.70


SWEP.IronSightStruct = {
    Pos = Vector(-3.661, -4.549, -0.08),
    Ang = Angle(0, 0, 0),
}


SWEP.SightTime = 0.75


SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "ar2"
SWEP.HoldtypeCustomize = "slam"
SWEP.HoldtypeSprintShoot = nil
SWEP.HoldtypeNPC = nil


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
           ShellEjectAt = 0,
           },
    ["fire_iron"] = {
           Source = "fire_iron",
           ShellEjectAt = 0,
           },
    ["fire_iron_empty"] = {
           Source = "fire",
           ShellEjectAt = 0,
           },
    ["reload_empty"] = {
           Source = "reload_empty",
           TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
           LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
       LHIKOut = 0.15, -- (not actually inverse kinematics)
       LHIKEaseOut = 0.1, -- how long LHIK eases in.
       LHIKEaseIn = 0.1, -- how long LHIK eases in.
           LHIK = true, -- basically disable foregrips on this anim
           SoundTable = {	
            {s = "weapons/holger26/magout.wav" , t = 0.55},
            {s = "weapons/holger26/maghit.wav" , t = 1.95},
            {s = "weapons/holger26/magin.wav" , t = 2.05},
            {s = "weapons/holger26/twist.wav" , t = 2.7},
            {s = "weapons/holger26/boltback.wav" , t = 2.8},
            {s = "weapons/holger26/boltfwd.wav" , t = 3},
           },
    },
    ["reload"] = {
       Source = "reload",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
       LHIK = true, -- basically disable foregrips on this anim
       LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
       LHIKOut = 0.15, -- (not actually inverse kinematics)
       LHIKEaseOut = 0.1, -- how long LHIK eases in.
       LHIKEaseIn = 0.1, -- how long LHIK eases in.
       SoundTable = {	
        {s = "weapons/holger26/magout.wav" , t = 0.55},
            {s = "weapons/holger26/maghit.wav" , t = 1.95},
            {s = "weapons/holger26/magin.wav" , t = 2.05},
       },
   },
   }


SWEP.DefaultBodygroups = "00000000000000000000000"


SWEP.AttachmentElements = {

    ["hg_custom"] = {
        VMBodygroups = {{ind = 1 , bg = 1}}
    },
    ["holger_chrios11"] = {
        AttPosMods = {
            [3] = {
                vpos = Vector(-1.3, -2.2, 11), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 0),
            },
        },
    },
}





   SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -5.25, 1.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Handguard", -- print name
        DefaultAttName = "Holger Factory",
        Slot = {"holger26_hg"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        InstalledEles = {"hg_custom"},
        Offset = {
            vpos = Vector(3.66, -5.5, -13), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical", -- print name
        DefaultAttName = "None",
        Slot = {"tac"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -4, 15), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Foregrip Slot", -- print name
        DefaultAttName = "Your hand",
        Slot = {"grip_mw", "bipod_mw"}, -- what kind of attachments can fit here, can be string or table
        
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.85, -4, -6.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Default Flashider",
        Slot = {"muzzle"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.2, 20.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0 ,-90),
        },
    },
}