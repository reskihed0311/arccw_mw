att.PrintName = "ARES Clear Shot Hybrid (LPVO)"
att.Description = "Cool Optic!"

att.SortOrder = 0.5

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom"
}
att.Desc_Cons = {
}

att.Desc_Neutrals = {
    "info.togglesight"
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/atts/optic/att_opt_aresclearshot.mdl"


att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.42),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ScopeMagnification = 2,
        IgnoreExtra = true,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 2.7,
            HolosightReticle = Material("vgui/hud/rets/ret_mag_1.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 8,
            HolosightBlackbox = false,
            Colorable = false,
            HolosightPiece = "models/atts/optic/att_opt_aresclearshot_hsp.mdl"
        },
    },
    {
        Pos = Vector(0.98, 10, -2.6),
        Ang = Angle(0, 0, -45),
        Magnification = 1.5,
        HolosightBone = "holosight",
        IgnoreExtra = false,
        HolosightData = {
            Holosight = true,
            HolosightReticle =  Material("vgui/hud/rets/reticle_2.png"),
            HolosightSize = 2.5,
            Colorable = false,
            HolosightNoHSP = true
        }
    },
}





att.Holosight = true
att.HolosightReticle = Material("vgui/hud/rets/ret_mag_1.png")
att.HolosightPiece = "models/atts/optic/att_opt_aresclearshot_hsp.mdl"
att.HolosightNoFlare = true
att.HolosightSize = 1

att.Mult_SightTime = 1.05

att.Colorable = false



