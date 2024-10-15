att.PrintName = "SZ Lonewolf (HOLO)"
att.Description = "Cool Optic!"

att.SortOrder = 0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/atts/optic/att_opt_szlonewolf.mdl"


att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        ViewModelFOV = 45,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("vgui/hud/rets/reticle_4.png", "mipsmooth")
att.HolosightPiece = "models/atts/optic/att_opt_szlonewolf_hsp.mdl"
att.HolosightNoFlare = true
att.HolosightSize = 1.8
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.0

att.Colorable = false