att.PrintName = "DXS Coriolis"
att.Description = "Cool Optic!"

att.SortOrder = 6

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic_sniper"

att.Model = "models/atts/optic/att_opt_dxs.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 6,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("vgui/hud/rets/ret_snip_1.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 10
att.HolosightBone = "holosight"
att.HolosightPiece = "models/atts/optic/att_opt_dxs_hsp.mdl"
att.Colorable = false

att.HolosightMagnification = 3
att.HolosightBlackbox = false

att.HolosightMagnificationMin = 2
att.HolosightMagnificationMax = 9

att.Mult_SightTime = 1.25
att.Mult_SightedSpeedMult = 0.85
att.Mult_SpeedMult = 0.94