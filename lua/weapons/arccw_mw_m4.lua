AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 65
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "M4 Platform"
SWEP.Trivia_Class = "Assault Carbine" -- "Submachine Gun"
SWEP.Trivia_Desc = "The flagship rifle of the U.S." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "Tempus Armaments" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "5.56x45MM" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "U.S.A" -- "Austria"
SWEP.Trivia_Year = nil -- 1968


SWEP.Slot = 2

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_m4.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!
SWEP.MirrorWorldModel = "models/weapons/arccw_mwr_m4_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM


SWEP.WorldModelOffset =
{
    pos = Vector(-8.2, 4, -6.5),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}

SWEP.Damage = 37
SWEP.DamageMin = 22 -- damage done at maximum range

SWEP.Range = 700 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.



SWEP.Recoil = 0.6
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 0.2-- random viewmodel offset when shooty


SWEP.Sway = 0.2


SWEP.Delay = 60 / 900 -- 60 / RPM.


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

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 450 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/m4/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/m4/fire_sil.wav"


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

SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.75
SWEP.ShootSpeedMult = 0.70


SWEP.IronSightStruct = {
    Pos = Vector(-3.27, -3.847, 0.92),
    Ang = Angle(0, 0, 0),
}


SWEP.SightTime = 0.32


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
           LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
       LHIKOut = 0.15, -- (not actually inverse kinematics)
       LHIKEaseOut = 0.1, -- how long LHIK eases in.
       LHIKEaseIn = 0.1, -- how long LHIK eases in.
           LHIK = true, -- basically disable foregrips on this anim
           SoundTable = {	
            {s = "weapons/m4/magout_empty.wav" , t = 0.4},
            {s = "weapons/m4/maghit_empty.wav" , t = 1.45},
            {s = "weapons/m4/magin_empty.wav" , t = 1.62},
            {s = "weapons/m4/boltcatch.wav" , t = 2.08},
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
        {s = "weapons/m4/magout.wav" , t = 0.62},
        {s = "weapons/m4/maghit_empty.wav" , t = 1.15},
        {s = "weapons/m4/magin.wav" , t = 1.28},
       },
   },
   }


SWEP.DefaultBodygroups = "00000000000000000000000"


SWEP.AttachmentElements = {

    ["hg_custom"] = {
        VMBodygroups = {{ind = 6 , bg = 1}}
    },
    ["stock_custom"] = {
        VMBodygroups = {{ind = 7 , bg = 1}}
    },
    ["fs_short"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },
    ["fs_long"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["fs_smid"] = {
        VMBodygroups = {{ind = 2, bg = 4}},
    },
    ["tempus_trenchpro"] = {
        AttPosMods = {
            [3] = {
                vpos = Vector(-1.85, -3.5, -7.5),
                vang = Angle (90, 0, -90),
            },
            [5] = {
                vpos = Vector(0, -1.7, 20),
                vang = Angle (-90, 0, 0),
            },
            [4] = {
                vpos = Vector(0, -2.9, 17), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            },
        },
    },
    ["th4"] = {
        AttPosMods = {
            [3] = {
                vpos = Vector(-1.85, -3.8, -8),
                vang = Angle (90, 0, -90),
            },
            [5] = {
                vpos = Vector(0, -1.7,14.5),
                vang = Angle (-90, 0, 0),
            },
            [4] = {
                vpos = Vector(0, -2.9, 11.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            },
        },
    },
    ["tempus_firebrand"] = {
        AttPosMods = {
            [3] = {
                vpos = Vector(-1.85, -3.5, -10),
                vang = Angle (90, 0, -90),
            },
            [5] = {
                vpos = Vector(0, -1.7,12),
                vang = Angle (-90, 0, 0),
            },
            [4] = {
                vpos = Vector(0, -2.9, 8.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            },
    
        },
    }
}

--code by chatgpt

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
        vm:SetBodygroup(2, 1)
    end
end


   SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.9, 2.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Handguard", -- print name
        DefaultAttName = "DEMO URGI Handguard",
        Slot = {"ar_hg"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        InstalledEles = {"hg_custom"},
        Offset = {
            vpos = Vector(3.23, -5.15, -13.7), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Foregrip Slot", -- print name
        DefaultAttName = "Your hand",
        Slot = {"grip_mw"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.85, -3.5, -8), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical", -- print name
        DefaultAttName = "None",
        Slot = {"tac"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.9, 13.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Default Flashider",
        Slot = {"muzzle"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -1.7, 16.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0 ,0),
        },
    },
    {
        PrintName = "Stock", -- print name
        DefaultAttName = "DEMO MOE Stock",
        Slot = {"ar_stock"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        InstalledEles = {"stock_custom"},
        Offset = {
            vpos = Vector(3.23, -5.15, -13.7), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
}