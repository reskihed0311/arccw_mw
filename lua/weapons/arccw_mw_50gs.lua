AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 70
SWEP.SubCategory = "Pistols"

SWEP.PrintName = ".50 GS"
SWEP.Trivia_Class = "Sidearm" -- "Submachine Gun"
SWEP.Trivia_Desc = "THE Handcannon." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "Sakin Arms" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = ".50 Action Express" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Israel" -- "Austria"
SWEP.Trivia_Year = nil -- 1968
SWEP.CanFireUnderwater = true


SWEP.Slot = 1

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_50gs.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_pist_deagle.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!
SWEP.MirrorWorldModel = "models/weapons/arccw_mwr_50gs_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM


SWEP.WorldModelOffset =
{
    pos = Vector(-10, 4, -3.8),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}


SWEP.Damage = 72
SWEP.DamageMin = 32 -- damage done at maximum range

SWEP.Range = 350 -- in METRES
SWEP.Penetration = 18
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.



SWEP.Recoil = 1.5
SWEP.RecoilSide = 0.4
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 1.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 0.2-- random viewmodel offset when shooty


SWEP.Sway = 0.5




SWEP.Delay = 60 / 270 -- 60 / RPM.


SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }

}

SWEP.AccuracyMOA = 22 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 750 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0-- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/50gs/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/50gs/fire_sup.wav"


SWEP.MuzzleEffect = "muzzleflash_pistol"

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellPhysScale = 1
SWEP.ShellPitch = 80
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
    Pos = Vector(-3.136, -0.04, 0.639),
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
           LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
           LHIKOut = 0.25, -- (not actually inverse kinematics)
           LHIKEaseOut = 0.1, -- how long LHIK eases in.
           LHIKEaseIn = 0.1, -- how long LHIK eases in.
           LHIK = true, -- basically disable foregrips on this anim
           SoundTable = {	
            {s = "weapons/50gs/magout_empty.wav" , t = 0.27},
            {s = "weapons/50gs/maghit_empty.wav" , t = 1.25},
            {s = "weapons/50gs/magin_empty.wav" , t = 1.38},
            {s = "weapons/50gs/slideback.wav" , t = 2.05},
            {s = "weapons/50gs/slidefwd.wav" , t = 2.12},
           },
    },
    ["reload"] = {
       Source = "reload",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
       LHIK = true, -- basically disable foregrips on this anim
       LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
       LHIKOut = 0.25, -- (not actually inverse kinematics)
       LHIKEaseOut = 0.1, -- how long LHIK eases in.
       LHIKEaseIn = 0.1, -- how long LHIK eases in.
       SoundTable = {	
        {s = "weapons/50gs/magrel.wav" , t = 0.42},
        {s = "weapons/50gs/magout.wav" , t = 0.55},
        {s = "weapons/50gs/maghit.wav" , t = 1.05},
        {s = "weapons/50gs/magin.wav" , t = 1.15},
       },
   },
   }


SWEP.DefaultBodygroups = "00000000000000000000000"

SWEP.AttachmentElements = {
    ["bar_custom"] = {
        VMBodygroups = {{ind = 3 , bg = 1}}
    },
    ["50gs_tyrantfifty"] = {
        AttPosMods = {
            [5] = {
                vpos = Vector(0, -2.5,9.3), -- offset that the attachment will be relative to the bone
                vang = Angle(-90, 0, -90),
            },
            [3] = {
                vpos = Vector(0, -1.2,7), -- offset that the attachment will be relative to the bone
                vang = Angle(90, 0, -90),
            }
        }
    }

}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.9, 3.7), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Barrel", -- print name
        DefaultAttName = "SA Factory 50",
        Slot = {"bar_50gs"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        InstalledEles = {"bar_custom"},
        Offset = {
            vpos = Vector(3.13, -3.8, -15.2), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical", -- print name
        DefaultAttName = "Nothing",
        Slot = {"tac_lite"}, -- what kind of attachments can fit here, can be string or table
        GivesFlags = {"nogrip"},
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -1.2,5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Foregrip Slot", -- print name
        DefaultAttName = "Your hand",
        Slot = {"grip_mw"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        ExcludeFlags = {"nogrip"},
        Offset = {
            vpos = Vector(-1.85, -4.2, -14), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Threaded Barrel",
        Slot = {"muzzle_50ae"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.5,6.4), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
        },
    },
}
