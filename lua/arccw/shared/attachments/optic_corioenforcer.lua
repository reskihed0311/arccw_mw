att.PrintName = "CORIO Enforcer (HOLO)"
att.Description = "Cool Optic!"

att.SortOrder = 0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/atts/optic/att_opt_corioenforcer.mdl"


att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("vgui/hud/rets/reticle_1.png")
att.HolosightPiece = "models/atts/optic/att_opt_corioenforcer_hsp.mdl"
att.HolosightNoFlare = true
att.HolosightSize = 1.5
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.02

att.Colorable = false