AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 65
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "TAQ-56"
SWEP.Trivia_Class = "Assault Carbine" -- "Submachine Gun"
SWEP.Trivia_Desc = "The light version of the TAQ Series." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "Tactique Verte France" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "5.56x45MM" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "France" -- "Austria"
SWEP.Trivia_Year = nil -- 1968


SWEP.Slot = 2

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_mwr_taq56.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!
SWEP.MirrorWorldModel = "models/weapons/arccw_mwr_taq56_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM


SWEP.WorldModelOffset =
{
    pos = Vector(-8.2, 4, -6.5),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}

SWEP.Damage = 32
SWEP.DamageMin = 28 -- damage done at maximum range

SWEP.Range = 800 -- in METRES
SWEP.Penetration = 15
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.



SWEP.Recoil = 0.45
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 0.85
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 0.2-- random viewmodel offset when shooty


SWEP.Sway = 0.2


SWEP.Delay = 60 / 625 -- 60 / RPM.


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

SWEP.ShootSound = "weapons/taq56/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/taq56/fire_sil.wav"


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
    Pos = Vector(-3.406, -1.558, 0.5),
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
           LHIKIn = 0.55, -- In/Out controls how long it takes to switch to regular animation.
       LHIKOut = 0.15, -- (not actually inverse kinematics)
       LHIKEaseOut = 0.1, -- how long LHIK eases in.
       LHIKEaseIn = 0.1, -- how long LHIK eases in.
           LHIK = true, -- basically disable foregrips on this anim
           SoundTable = {	
            {s = "weapons/taq56/magrel.wav" , t = 0.30},
            {s = "weapons/taq56/magout_empty.wav" , t = 0.38},
            {s = "weapons/taq56/maghit_empty.wav" , t = 1.45},
            {s = "weapons/taq56/magin_empty.wav" , t = 1.48},
            {s = "weapons/taq56/boltrel.wav" , t = 2},
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
        {s = "weapons/taq56/maggrab.wav" , t = 0.52},
        {s = "weapons/taq56/magout.wav" , t = 0.62},
        {s = "weapons/taq56/maghit.wav" , t = 1},
        {s = "weapons/taq56/magin.wav" , t = 1.1},
       },
   },
   }


SWEP.DefaultBodygroups = "00000000000000000000000"


SWEP.AttachmentElements = {
    ["taq_barlong"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
        AttPosMods = {
            [5] = {
                vpos = Vector(0, -2.05, 30),
                vang = Angle (90, 0, -90),
            },
        },
    },
    ["taq_barshort"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        AttPosMods = {
            [5] = {
                vpos = Vector(0, -2.05, 24),
                vang = Angle (90, 0, -90),
            },
    
        },
    }
} --do this later

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
            vpos = Vector(0, -4, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Barrel", -- print name
        DefaultAttName = "TAQ56 Factory",
        Slot = {"bar_taq56"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to 
    },
    {
        PrintName = "Foregrip Slot", -- print name
        DefaultAttName = "Your hand",
        Slot = {"grip_mw"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.85, -4.1, -8), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical", -- print name
        DefaultAttName = "None",
        Slot = {"tac"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -4, 10), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Default Flashider",
        Slot = {"muzzle"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.05, 16.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0 ,0),
        },
    },
}