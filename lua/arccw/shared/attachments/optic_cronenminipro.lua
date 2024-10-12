att.PrintName = "CRONEN Mini Pro (Red Dot)"
att.Description = "Cool Optic!"

att.SortOrder = 0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/atts/optic/att_opt_cronenminipro.mdl"


att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -0.7),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("vgui/hud/rets/reticle_2.png")
att.HolosightPiece = "models/atts/optic/att_opt_cronenminipro_hsp.mdl"
att.HolosightNoFlare = true
att.HolosightSize = 2.5
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.0

att.Colorable = false