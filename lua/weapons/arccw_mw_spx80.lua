AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 70
SWEP.SubCategory = "Sniper Rifles"

SWEP.PrintName = "SP-X 80"
SWEP.Trivia_Class = "Sniper Rifle" -- "Submachine Gun"
SWEP.Trivia_Desc = "A powerful , light sniper." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "Bryson" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = ".300 Magnum" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "U.S.A" -- "Austria"
SWEP.Trivia_Year = nil -- 1968
SWEP.CanFireUnderwater = true


SWEP.Slot = 3

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_spx80.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_snip_scout.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!


SWEP.WorldModelOffset =
{
    pos = Vector(-6, 4, -5.2),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}


SWEP.Damage = 135
SWEP.DamageMin = 100 -- damage done at maximum range
SWEP.Range = 1200 -- in METRES
SWEP.Penetration = 30
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.



SWEP.Recoil = 3
SWEP.RecoilSide = 0.4
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1-- random viewmodel offset when shooty


SWEP.Sway = 1




SWEP.Delay = 60 / 60 -- 60 / RPM.


SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }

}

SWEP.AccuracyMOA = 0 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 1000 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0-- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/spx80/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/spx80/fire_sup.wav"


SWEP.MuzzleEffect = "muzzleflash_g3"

SWEP.ShellModel = "models/shells/shell_338mag.mdl"
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
SWEP.SightedSpeedMult = 0.8
SWEP.ShootSpeedMult = 0.8


SWEP.IronSightStruct = {
    Pos = Vector(-2.721, -8.381, 0.68),
    Ang = Angle(0, 0, 0),
}


SWEP.SightTime = 0.3


SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "ar2"
SWEP.HoldtypeCustomize = "slam"
SWEP.HoldtypeSprintShoot = nil
SWEP.HoldtypeNPC = nil



SWEP.ManualAction = true -- pump/bolt action

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
    ["reload_empty"] = {
           Source = "reload_empty",
           TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
           SoundTable = {	
            {s = "weapons/spx80/boltup.wav", t = 0.35},
            {s = "weapons/spx80/boltback.wav", t = 0.61},
            {s = "weapons/spx80/magrel.wav", t = 1.15},
            {s = "weapons/spx80/magout.wav", t = 1.35},
            {s = "weapons/spx80/maghit.wav", t = 2.5},
            {s = "weapons/spx80/magin.wav", t = 2.65},
            {s = "weapons/spx80/boltfwd.wav", t = 3.1},
            {s = "weapons/spx80/boltdown.wav", t = 3.2},
           },
    },
    ["reload"] = {
       Source = "reload",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
       SoundTable = {	
        {s = "weapons/spx80/magrel.wav", t = 0.2},
        {s = "weapons/spx80/magout.wav", t = 0.35},
        {s = "weapons/spx80/maghit.wav", t = 1.55},
        {s = "weapons/spx80/magin.wav", t = 1.65},
       },
   },
   ["cycle"] = {
    Source = "cycle",
    ShellEjectAt = 0.65,
    SoundTable = {
        {s = "weapons/spx80/boltup.wav", t = 0.25},
        {s = "weapons/spx80/boltback.wav", t = 0.52},
        {s = "weapons/spx80/boltfwd.wav", t = 0.90},
        {s = "weapons/spx80/boltdown.wav", t = 1},
    },
    },
    ["cycle_iron"] = {
        Source = "cycle_iron",
        ShellEjectAt = 0.65,
        SoundTable = {
            {s = "weapons/spx80/boltup.wav", t = 0.25},
            {s = "weapons/spx80/boltback.wav", t = 0.52},
            {s = "weapons/spx80/boltfwd.wav", t = 0.90},
            {s = "weapons/spx80/boltdown.wav", t = 1},
        },
        },
   }


SWEP.DefaultBodygroups = "00000000000000000000000"

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -4, 4.2), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical", -- print name
        DefaultAttName = "None",
        Slot = {"tac"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -4, 17), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Bipod", -- print name
        DefaultAttName = "None",
        Slot = {"bipod_mw"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.85, -4.8, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Default Flashider",
        Slot = {"muzzle"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.9, 25), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0 ,0),
        },
    },
}