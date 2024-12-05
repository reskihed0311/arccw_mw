att.PrintName = "XTEN ANGEL-40 (HOLO-LR)"
att.Description = "Cool Optic!"
att.SortOrder = 0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/atts/optic/att_opt_xtenangel40.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.35),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        ViewModelFOV = 45,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("vgui/hud/rets/reticle_5.png", "mipsmooth")
att.HolosightPiece = "models/atts/optic/att_opt_xtenangel40hsp.mdl"
att.HolosightSize = 1.8
att.HolosightBone = "holosight"
att.CustomRangefinder = true

att.HoloSightPos = Vector(0, 0, 0)  -- Position relative to optic model
att.HoloSightAng = Angle(0, 0, 0)  -- Angle relative to optic model

att.Mult_SightTime = 1.10

att.Colorable = false
hook.Add("PostDrawViewModel", "CustomRangefinderRender", function(vm, ply, weapon)
    if not weapon or not IsValid(weapon) then return end
    if not weapon.Attachments then return end

    local activeRangefinder = false
    local rangefinderData = nil
    local opticAttachment = nil

    for _, attach in pairs(weapon.Attachments) do
        if attach.Installed == "optic_xtenangel40" then
            opticAttachment = attach
            activeRangefinder = true
            rangefinderData = ArcCW.AttachmentTable["optic_xtenangel40"]
            break
        end
    end

    if not activeRangefinder then return end

    local pos = opticAttachment.Pos or Vector(0, 10, -1.35)
    local ang = opticAttachment.Ang or Angle(0, 0, 0)

    pos = pos + ang:Forward() * (rangefinderData.HoloSightPos.x or 0)
    pos = pos + ang:Right() * (rangefinderData.HoloSightPos.y or 0)
    pos = pos + ang:Up() * (rangefinderData.HoloSightPos.z or 0)

    ang:RotateAroundAxis(ang:Right(), rangefinderData.HoloSightAng.p or 0)
    ang:RotateAroundAxis(ang:Up(), rangefinderData.HoloSightAng.y or 0)
    ang:RotateAroundAxis(ang:Forward(), rangefinderData.HoloSightAng.r or 0)

    if weapon:GetState() ~= ArcCW.STATE_SIGHTS then return end

    local tr = util.TraceLine({
        start = weapon:GetOwner():EyePos(),
        endpos = weapon:GetOwner():EyePos() + weapon:GetOwner():EyeAngles():Forward() * 10000,
        filter = weapon:GetOwner(),
        mask = MASK_SHOT
    })

    local distanceText = "---"
    if tr.Hit then
        local distance = tr.HitPos:Distance(tr.StartPos) / 39.37
        distanceText = string.format("%.0f m", distance)
    end

    local eyePos = weapon:GetOwner():EyePos()
    local forward = weapon:GetOwner():EyeAngles():Forward()
    local textPos = eyePos + forward * 10
    local ang = (textPos - eyePos):Angle()

    ang:RotateAroundAxis(ang:Up(), 90)

    local angleOffset = Angle(90, 90, -90)
    ang:RotateAroundAxis(ang:Up(), angleOffset.y)
    ang:RotateAroundAxis(ang:Forward(), angleOffset.p)
    ang:RotateAroundAxis(ang:Right(), angleOffset.r)

    cam.Start3D2D(textPos, ang, 0.009)
    cam.IgnoreZ(true)
    surface.SetDrawColor(0, 0, 0, 0)
    surface.DrawRect(-50, -25, 100, 50)
    surface.SetTextColor(248, 188, 184, 255)
    surface.SetFont("DefaultFixed")
    local textWidth, textHeight = surface.GetTextSize(distanceText)
    surface.SetTextPos(-textWidth / 2, -textHeight / 2)
    surface.SetTextPos(25, -36)
    surface.DrawText(distanceText)
    cam.End3D2D()
end)
