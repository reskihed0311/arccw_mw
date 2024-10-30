SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW : Call Of Duty" -- edit this if you like
SWEP.SubCategory = "Throwables"
SWEP.AdminOnly = false

SWEP.PrintName = "Frag Grenade"
SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Manufacturer = nil
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Pyrotechnic delay fuze"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = nil

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/throwables/arccw_mwr_tac_frag.mdl"
SWEP.WorldModel = "models/throwables/arccw_mwr_tac_frag_wm.mdl"
SWEP.ViewModelFOV = 60

SWEP.FuseTime = 3.5
SWEP.PullPinTime = 1

SWEP.CookPrimFire = false
SWEP.CookAltFire = false

SWEP.Throwing = true

SWEP.Primary.Ammo = "Grenade" -- what ammo type the gun uses
SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 1000
SWEP.ShootEntity = "arccw_mw_frag"

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
    },
    ["pre_throw"] = {
        Source = {"pull"},
    },
    ["throw"] = {
        Source = "throw",
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE
    },
    ["holster"] = {
        Source = "holster",
    },
}