att.PrintName = "FSS SPECTRE (THERMAL)"
att.Description = "A micro thermal optic."

att.SortOrder = 50

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
    "autostat.thermal"
}
att.Desc_Cons = {
    "24 Frames per Second."
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/atts/optic/att_opt_microtherm.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -0.80),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 4,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        Thermal = true,
        IgnoreExtra = true,
        ForceLowRes = true,
        FPSLock = 42,
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("vgui/hud/rets/ret_digital_1.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 4.5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/atts/optic/att_opt_microtherm_hsp.mdl"

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.HolosightConstDist = 42

att.HolosightMagnificationMin = 1.1
att.HolosightMagnificationMax = 2

att.Mult_SightTime = 1.4
att.Mult_SightedSpeedMult = 0.75
att.Mult_SpeedMult = 0.875