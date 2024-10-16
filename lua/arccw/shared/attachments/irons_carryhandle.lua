att.PrintName = "Carry Handle"
att.Description = "You carry it with the handle."

att.SortOrder = 0.5

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "carryhandle"

att.Model = "models/atts/irons/att_fs_carrynalde.mdl"

att.ActivateElements = {"nors"}

att.ModelOffset = Vector(-1.5, 0, 0.85)


att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.55),
        Ang = Angle(0.3, 0,0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightNoHSP  = true
att.HolosightBone = "holosight"

att.Mult_SightTime = 0.85

att.Colorable = false