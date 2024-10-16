AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 70
SWEP.SubCategory = "Sniper Rifles"

SWEP.PrintName = "FJX Imperium"
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


SWEP.ViewModel = "models/weapons/arccw_mwr_fjximperium.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_snip_scout.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!


SWEP.WorldModelOffset =
{
    pos = Vector(-6, 4, -5.2),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}


SWEP.Damage = 170
SWEP.DamageMin = 120 -- damage done at maximum range
SWEP.Range = 1500 -- in METRES
SWEP.Penetration = 50
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.



SWEP.Recoil = 5
SWEP.RecoilSide = 0.4
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1-- random viewmodel offset when shooty


SWEP.Sway = 0.55




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

SWEP.ShootSound = "weapons/fjximperium/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/fjximperium/fire_sil.wav"


SWEP.MuzzleEffect = "muzzleflash_g3"

SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellPhysScale = 1
SWEP.ShellPitch = 50
SWEP.ShellSounds = "autocheck"--ArcCW.ShellSoundsTable
SWEP.ShellRotate = 0
SWEP.ShellTime = 0.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = nil -- attachment on which coolview is affected by, default is muzzleeffect
SWEP.CamAttachment = nil -- if set, this attachment will control camera movement
SWEP.MuzzleFlashColor = Color(244, 209, 66)

SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.65
SWEP.ShootSpeedMult = 0.60


SWEP.IronSightStruct = {
    Pos = Vector(-4.321, -4.965, 0.439),
    Ang = Angle(0, 0, 0),
}


SWEP.SightTime = 0.28


SWEP.ActivePos = Vector(0, 0, 0)
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
            {s = "weapons/fjximperium/boltgrab.wav", t = 0.30},
            {s = "weapons/fjximperium/boltup.wav", t = 0.45},
            {s = "weapons/fjximperium/boltback.wav", t = 0.60},
            {s = "weapons/fjximperium/magout.wav", t = 1.39},
            {s = "weapons/fjximperium/maghit.wav", t = 3},
            {s = "weapons/fjximperium/magin.wav", t = 3.23},
            {s = "weapons/fjximperium/boltfwd.wav", t = 4},
            {s = "weapons/fjximperium/boltdown.wav", t = 4.25},
           },
    },
    ["reload"] = {
       Source = "reload",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
       SoundTable = {	
        {s = "weapons/fjximperium/magout.wav", t = 0.45},
        {s = "weapons/fjximperium/maghit.wav", t = 1.85},
        {s = "weapons/fjximperium/magin.wav", t = 2},
       },
   },
   ["cycle"] = {
    Source = "cycle",
    ShellEjectAt = 0.8,
    SoundTable = {
        {s = "weapons/fjximperium/boltgrab.wav", t = 0.20},
        {s = "weapons/fjximperium/boltup.wav", t = 0.30},
        {s = "weapons/fjximperium/boltback.wav", t = 0.70},
        {s = "weapons/fjximperium/boltfwd.wav", t = 1.23},
        {s = "weapons/fjximperium/boltdown.wav", t = 1.53},
    },
    },
    ["cycle_iron"] = {
        Source = "cycle_iron",
        ShellEjectAt = 0.8,
        SoundTable = {
            {s = "weapons/fjximperium/boltgrab.wav", t = 0.20},
            {s = "weapons/fjximperium/boltup.wav", t = 0.30},
            {s = "weapons/fjximperium/boltback.wav", t = 0.70},
            {s = "weapons/fjximperium/boltfwd.wav", t = 1.23},
            {s = "weapons/fjximperium/boltdown.wav", t = 1.53},
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
            vpos = Vector(0, -5, 2.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical", -- print name
        DefaultAttName = "None",
        Slot = {"tac"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.6, -3, 21), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 0),
        },
    },
    {
        PrintName = "Bipod", -- print name
        DefaultAttName = "None",
        Slot = {"bipod_interv"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -5,20), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device (TEMP)", -- print name
        DefaultAttName = "Default Flashider",
        Slot = {"muzzle"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -3.1, 28), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0 ,0),
        },
    },
}