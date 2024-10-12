AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 65
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "KASTOV 7.62"
SWEP.Trivia_Class = "Assault Carbine" -- "Submachine Gun"
SWEP.Trivia_Desc = "Kalash" -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "Kastovia" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "7.62x39MM" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Kastovia" -- "Austria"
SWEP.Trivia_Year = nil -- 1968



SWEP.Slot = 2

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_ka762.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!
SWEP.MirrorWorldModel = "models/weapons/arccw_mwr_ka762_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM


SWEP.WorldModelOffset =
{
    pos = Vector(-7., 3.5, -5.5),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}


SWEP.Damage = 48
SWEP.DamageMin = 33 -- damage done at maximum range

SWEP.Range = 600 -- in METRES
SWEP.Penetration = 12
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.



SWEP.Recoil = 0.9
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.8
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 0.2-- random viewmodel offset when shooty


SWEP.Sway = 0.4


SWEP.Delay = 60 / 600 -- 60 / RPM.


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

SWEP.AccuracyMOA = 15 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/ka762/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/ka762/fire_sup.wav"


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

SWEP.SpeedMult = 0.72
SWEP.SightedSpeedMult = 0.65
SWEP.ShootSpeedMult = 0.60


SWEP.IronSightStruct = {
    Pos = Vector(-2.915, -7.459, 0.879),
    Ang = Angle(0, 0, 0),
}


SWEP.SightTime = 0.30


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
            {s = "weapons/ka762/magout_empty.wav" , t = 0.5},
            {s = "weapons/ka762/magin_empty.wav" , t = 1.19},
            {s = "weapons/ka762/boltback.wav" , t = 1.95},
            {s = "weapons/ka762/boltfwd.wav" , t = 2.2},
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
        {s = "weapons/ka762/maggrab.wav" , t = 0.45},
        {s = "weapons/ka762/magout.wav" , t = 0.55},
        {s = "weapons/ka762/magin_empty.wav" , t = 1.05},
       },
   },
   }


SWEP.DefaultBodygroups = "00000000000000000000000"

SWEP.AttachmentElements = {
    ["rail"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["hg_custom"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["stock_custom"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["ka7_classic"] = {
        AttPosMods = {
            [3] = {
                vpos = Vector(21, -2, 0),
                vang = Angle (-180, 0 ,0),
            },
            [4] = {
                vpos = Vector(14.5, -2, 1.1), -- offset that the attachment will be relative to the bone
                vang = Angle(0, 0, 0),
            },
    
        },
    },
    ["igk30"] = {
        AttPosMods = {
            [3] = {
                vpos = Vector(21, -2, 0),
                vang = Angle (-180, 0 ,0),
            },
            [4] = {
                vpos = Vector(14.5, -2, 1.1), -- offset that the attachment will be relative to the bone
                vang = Angle(0, 0, 0),
            },
    
        },
    },
    ["kas10"] = {
        AttPosMods = {
            [3] = {
                vpos = Vector(29, -2, 0),
                vang = Angle (-180, 0 ,0),
            },
            [4] = {
                vpos = Vector(14.5, -2, 1.1), -- offset that the attachment will be relative to the bone
                vang = Angle(0, 0, 0),
            },
    
        },
    }
    
}


   SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        InstalledEles = {"rail"},
        Offset = {
            vpos = Vector(1, -3.8, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
        },
    },
    {
        PrintName = "Handguard", -- print name
        DefaultAttName = "KASTOV TAC.",
        Slot = {"ka_hg"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        InstalledEles = {"hg_custom"},
        Offset = {
            vpos = Vector(-12.7, -4.9, -2.92), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Default Flashider",
        Slot = {"muzzle"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(21, -2, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(-180, 0 ,0),
        },
    },
    {
        PrintName = "Tactical", -- print name
        DefaultAttName = "None",
        Slot = {"tac"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(11, -2, 1.1), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName = "Foregrip Slot", -- print name
        DefaultAttName = "Your hand",
        Slot = {"grip_mw"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-8, -4, 1.8), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
        },
    },
    {
        PrintName = "Stock", -- print name
        DefaultAttName = "KASTOV POL Factory.",
        Slot = {"ka_stock"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        InstalledEles = {"stock_custom"},
        Offset = {
            vpos = Vector(-12.7, -4.9, -2.92), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
        },
    },
}