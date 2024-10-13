att.PrintName = "SZ Bullseye (MAGNIFIED)"
att.Description = "Cool Optic!"

att.SortOrder = 3

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/atts/optic/att_opt_szbullseye.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 8, -1.1),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        IgnoreExtra = true
    }
}

att.Holosight = true
att.HolosightReticle = Material("vgui/hud/rets/ret_mag_2.png", "mipsmooth")
att.HolosightSize = 10
att.HolosightBone = "holosight"
att.HolosightPiece = "models/atts/optic/att_opt_szbullseye_hsp.mdl"
att.Colorable = true

att.HolosightBlackbox = false

att.HolosightMagnification = 3

att.Mult_SightTime = 1.12
att.Mult_SightedSpeedMult = 0.92