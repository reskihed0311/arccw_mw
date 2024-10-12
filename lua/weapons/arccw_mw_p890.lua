AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 70
SWEP.SubCategory = "Pistols"

SWEP.PrintName = "P890"
SWEP.Trivia_Class = "Sidearm" -- "Submachine Gun"
SWEP.Trivia_Desc = "The classic Bruen , DA/SA Sidearm." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "BRUEN" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "10MM Auto" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Switzerland" -- "Austria"
SWEP.Trivia_Year = nil -- 1968
SWEP.CanFireUnderwater = true


SWEP.Slot = 1

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_p890.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_pist_p228.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!
SWEP.MirrorWorldModel = "models/weapons/arccw_mwr_p890_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM


SWEP.WorldModelOffset =
{
    pos = Vector(-10, 4, -3.8),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}


SWEP.Damage = 52
SWEP.DamageMin = 15 -- damage done at maximum range

SWEP.Range = 200 -- in METRES
SWEP.Penetration = 5
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.



SWEP.Recoil = 0.8
SWEP.RecoilSide = 0.4
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 0.2-- random viewmodel offset when shooty


SWEP.Sway = 0.2




SWEP.Delay = 60 / 300 -- 60 / RPM.


SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }

}

SWEP.AccuracyMOA = 20 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0-- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/p890/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/p890/fire_sil.wav"


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
    Pos = Vector(-3.28, 0, 0.959),
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


SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
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
    ["draw_empty"] = {
        Source = "draw_empty",
        },
    ["idle_empty"] = {
        Source = "idle_empty",
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
    ["reload_empty"] = {
           Source = "reload_empty",
           TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
           LHIKIn = 0.8, -- In/Out controls how long it takes to switch to regular animation.
           LHIKOut = 0.75, -- (not actually inverse kinematics)
           LHIKEaseOut = 0.1, -- how long LHIK eases in.
           LHIKEaseIn = 0.1, -- how long LHIK eases in.
           LHIK = true, -- basically disable foregrips on this anim
           SoundTable = {	
            {s = "weapons/p890/magout_empty.wav" , t = 0.35},
            {s = "weapons/p890/maghit.wav" , t = 1.15},
            {s = "weapons/p890/magin.wav" , t = 1.23},
            {s = "weapons/p890/boltrel.wav" , t = 1.6},
           },
    },
    ["reload"] = {
       Source = "reload",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
       LHIK = true, -- basically disable foregrips on this anim
       LHIKIn = 0.8, -- In/Out controls how long it takes to switch to regular animation.
       LHIKOut = 0.25, -- (not actually inverse kinematics)
       LHIKEaseOut = 0.1, -- how long LHIK eases in.
       LHIKEaseIn = 0.1, -- how long LHIK eases in.
       SoundTable = {	
        {s = "weapons/p890/magout.wav" , t = 0.45},
        {s = "weapons/p890/maghit.wav" , t = 0.9},
        {s = "weapons/p890/magin.wav" , t = 1.02},
       },
   },
   }


SWEP.DefaultBodygroups = "00000000000000000000000"

SWEP.AttachmentElements = {
    ["xtenharbinger"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -2,5.2),
                vang = Angle (-90, 0, -90),
            },
    
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "slide", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Slide", -- print name
        DefaultAttName = "BRUEN Factory Slide",
        Slot = {"p890_slide"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Threaded Barrel",
        Slot = {"muzzle_pistol"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2,4.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
        },
    },
}
