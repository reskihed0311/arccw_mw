AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 70
SWEP.SubCategory = "Pistols"

SWEP.PrintName = "TYR"
SWEP.Trivia_Class = "Sidearm" -- "Submachine Gun"
SWEP.Trivia_Desc = "Revolver firing a chunky round." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = nil -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "12.7x55MM" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Russia" -- "Austria"
SWEP.Trivia_Year = nil -- 1968
SWEP.CanFireUnderwater = true


SWEP.Slot = 1

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_tyr.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_357.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!
SWEP.MirrorWorldModel = "models/weapons/arccw_mwr_tyr_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM


SWEP.WorldModelOffset =
{
    pos = Vector(-10, 4, -3.8),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}


SWEP.Damage = 88
SWEP.DamageMin = 68 -- damage done at maximum range

SWEP.Range = 350 -- in METRES
SWEP.Penetration = 20
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.



SWEP.Recoil = 2.5
SWEP.RecoilSide = 1.5
SWEP.RecoilRise = 3
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.25
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 0.25-- random viewmodel offset when shooty


SWEP.Sway = 0.35




SWEP.Delay = 60 / 300 -- 60 / RPM.


SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }

}

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0-- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/tyr/fire_fp.wav"
SWEP.ShootSoundSilenced = nil


SWEP.MuzzleEffect = "muzzleflash_pistol"

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.2
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

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.9
SWEP.ShootSpeedMult = 0.85


SWEP.IronSightStruct = {
    Pos = Vector(-3.089, 0, 0.639),
    Ang = Angle(0, 0, 0),
}


SWEP.SightTime = 0.2


SWEP.ActivePos = Vector(0, 1, 0)
SWEP.ActiveAng = Angle(0, 0, 0)


SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"
SWEP.HoldtypeCustomize = "slam"
SWEP.HoldtypeSprintShoot = nil
SWEP.HoldtypeNPC = nil


SWEP.TriggerDelay = true -- Set to true to play the "trigger" animation before firing. Delay time is dependent on animation time.

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        },
        ["trigger"] = {
            Source = "trigger",
            SoundTable = {
                {s = "weapons/tyr/trigger.wav" , t = 0},
            }
            },
    ["holster_empty"] = {
        Source = "holster_empty",
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
    ["reload"] = {
       Source = "reload",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
       LHIK = true, -- basically disable foregrips on this anim
       LHIKIn = 0.85, -- In/Out controls how long it takes to switch to regular animation.
       LHIKOut = 0.25, -- (not actually inverse kinematics)
       LHIKEaseOut = 0.1, -- how long LHIK eases in.
       LHIKEaseIn = 0.1, -- how long LHIK eases in.
       SoundTable = {	
        {s = "weapons/tyr/cylopen.wav" , t = 0.3},
        {s = "weapons/tyr/ejector.wav" , t = 0.78},
        {s = "weapons/tyr/shellejected.wav" , t = 0.82},
        {s = "weapons/tyr/shellhit.wav" , t = 2},
        {s = "weapons/tyr/shellin.wav" , t = 2.1},
        {s = "weapons/tyr/cylclose.wav", t = 2.5},
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
            vpos = Vector(0, -3.5, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Foregrip Slot", -- print name
        DefaultAttName = "Your hand",
        Slot = {"grip_mw"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.85, -4.2, -12), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical", -- print name
        DefaultAttName = "None",
        Slot = {"tac"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.85, -2.4, 7), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 0),
        },
    },
    
}
