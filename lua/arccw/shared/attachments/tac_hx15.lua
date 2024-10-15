att.PrintName = "HX-15 Laser Light Module"
att.Description = "A laser light module that helps you improve your aim down sights speed , at cost of exposure."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Increased exposure due to the light beam."

}
att.AutoStats = true
att.Slot = "tac_lite"

att.Model = "models/atts/tac/att_tac_hx15.mdl"

att.LaserStrength = 1
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(255, 50, 50)}
att.Laser = false
att.Flashlight = false
att.FlashlightFOV = 50
att.FlashlightFarZ = 1024 -- how far it goes
att.FlashlightNearZ = 1 -- how far away it starts
att.FlashlightAttenuationType = ArcCW.FLASH_ATT_LINEAR -- LINEAR, CONSTANT, QUADRATIC are available
att.FlashlightColor = Color(255, 242, 229)
att.FlashlightTexture = "effects/flashlight001"
att.FlashlightBrightness = 3
att.FlashlightBone = "laser"

att.ToggleStats = {
    {
        PrintName = "On",
        Flashlight = true ,
        Laser = true,
        Mult_AccuracyMOA = 0.65,
        Mult_HipDispersion = 0.2,
        Mult_MoveDispersion = 0.8,
        Mult_SightTime = .85,
    },
    {
        PrintName = "Off",
        Flashlight = false,
        Laser = false, 
    }
}