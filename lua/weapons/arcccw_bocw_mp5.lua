AddCSLuaFile()


SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.AdminOnly = false
SWEP.Base = "arccw_base"
SWEP.ViewModelFOV = 65
SWEP.SubCategory = "Sub-Machine Guns"

SWEP.PrintName = "MP5"
SWEP.Trivia_Class = "Sub-Machine Gun" -- "Submachine Gun"
SWEP.Trivia_Desc = "A compact , modular SMG." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = nil -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9x19MM Parabellum" -- "9x21mm Jager"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Germany" -- "Austria"
SWEP.Trivia_Year = nil -- 1968


SWEP.Slot = 2

SWEP.UseHands = true


SWEP.ViewModel = "models/weapons/arccw_bocwr_mp5.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!
SWEP.MirrorWorldModel = nil


SWEP.WorldModelOffset =
{
    pos = Vector(-7.5, 4, -6),
    ang = Angle(175, 180, 0),
    scale = 0.95,
}

SWEP.Damage = 32
SWEP.DamageMin = 10 -- damage done at maximum range

SWEP.Range = 25 -- in METRES
SWEP.Penetration = 17
SWEP.DamageType = DMG_BULLET

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.



SWEP.Recoil = 0.55
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 0.45
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 0.2-- random viewmodel offset when shooty


SWEP.Sway = 0.2


SWEP.Delay = 60 / 700 -- 60 / RPM.


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
SWEP.HipDispersion = 450 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses


SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/bocw_mp5/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/bocw_mp5/fire_sil.wav"


SWEP.MuzzleEffect = "muzzleflash_smg"

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
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

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.88
SWEP.ShootSpeedMult = 0.85


SWEP.IronSightStruct = {
    Pos = Vector(-2.919, -1.902, 0.259),
    Ang = Angle(0, 0, 0),
}


SWEP.SightTime = 0.20


SWEP.ActivePos = Vector(0, 1, 0)
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
            {s = "weapons/bocw_mp5/boltopen.wav" , t = 0.10},
			{s = "weapons/bocw_mp5/magout.wav" , t = 0.62},
			{s = "weapons/bocw_mp5/maghit.wav" , t = 1.85},
			{s = "weapons/bocw_mp5/magin.wav" , t = 1.80},
			{s = "weapons/bocw_mp5/boltslap.wav" , t = 2.3},
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
        {s = "weapons/bocw_mp5/magout.wav" , t = 0.12},
		{s = "weapons/bocw_mp5/maghit.wav" , t = 1.25},
		{s = "weapons/bocw_mp5/magin.wav" , t = 1.20},
       },
   },
   }




SWEP.DefaultBodygroups = "00000000000000000000000"

SWEP.AttachmentElements = {
    ["railb"] = {  
        VMBodygroups = {{ind = 2 , bg = 1}}
    },
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
    end
end


   SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.07, -4, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Barrel", -- print name
        DefaultAttName = "MP5 SBR",
        Slot = {"hg_mp5"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(3.05, -6, -14), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Foregrip Slot", -- print name
        DefaultAttName = "Your hand",
        Slot = {"grip_mw"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
		InstalledEles = {"railb"},
        Offset = {
            vpos = Vector(-1.88, -3.6, -11), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle Device", -- print name
        DefaultAttName = "Default Flashider",
        Slot = {"muzzle_pistol"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        ExcludeFlags = {"sup_intg"}, -- if the weapon has this flag, hide this slot
        Offset = {
            vpos = Vector(-0.07, -1.67, 10.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0 ,-90),
        },
    },
}