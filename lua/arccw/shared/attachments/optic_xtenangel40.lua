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

att.Mult_SightTime = 1.15

att.Colorable = false
hook.Add("PostDrawViewModel", "CustomRangefinderRender", function(vm, ply, weapon)
    if not weapon or not IsValid(weapon) then return end
    if not weapon.Attachments then return end

    local activeRangefinder = false
    local rangefinderData = nil
    local opticAttachment = nil

    -- Check directly for "optic_xtenangel40" attachment
    for _, attach in pairs(weapon.Attachments) do
        if attach.Installed == "optic_xtenangel40" then
            opticAttachment = attach
            activeRangefinder = true
            rangefinderData = ArcCW.AttachmentTable["optic_xtenangel40"]
            break
        end
    end

    if not activeRangefinder then return end

    -- Ensure Pos and Ang are not nil, set defaults if missing
    local pos = opticAttachment.Pos or Vector(0, 10, -1.35)  -- Default to the given vector if nil
    local ang = opticAttachment.Ang or Angle(0, 0, 0)  -- Default to no rotation if nil

    -- Apply any offsets to adjust the rangefinder position relative to the optic
    pos = pos + ang:Forward() * (rangefinderData.HoloSightPos.x or 0)
    pos = pos + ang:Right() * (rangefinderData.HoloSightPos.y or 0)
    pos = pos + ang:Up() * (rangefinderData.HoloSightPos.z or 0)

    -- Adjust the angle to ensure it's oriented correctly
    ang:RotateAroundAxis(ang:Right(), rangefinderData.HoloSightAng.p or 0)
    ang:RotateAroundAxis(ang:Up(), rangefinderData.HoloSightAng.y or 0)
    ang:RotateAroundAxis(ang:Forward(), rangefinderData.HoloSightAng.r or 0)

    -- Only render when ADSing
    if weapon:GetState() ~= ArcCW.STATE_SIGHTS then return end

    -- Rangefinder trace logic to get hit position (for distance calculation)
    local tr = util.TraceLine({
        start = weapon:GetOwner():EyePos(),
        endpos = weapon:GetOwner():EyePos() + weapon:GetOwner():EyeAngles():Forward() * 10000,
        filter = weapon:GetOwner(),
        mask = MASK_SHOT
    })

    -- If the trace hits something, use tr.HitPos for the hit position, otherwise, use a fallback value
    local distanceText = "---"
    if tr.Hit then
        local distance = tr.HitPos:Distance(tr.StartPos) / 39.37 -- Convert to meters
        distanceText = string.format("%.0f m", distance)
    end

    -- Get position relative to the viewmodel's optic (use the optic's position but make it follow the camera)
    local eyePos = weapon:GetOwner():EyePos()
    local forward = weapon:GetOwner():EyeAngles():Forward()  -- Direction the player is facing

    -- Offset the text position in front of the player based on the camera's direction
    local textPos = eyePos + forward * 10  -- 10 units in front of the player

    -- Adjust the angle to face the player (so the text is always readable)
    local ang = (textPos - eyePos):Angle()  -- Make the text always face the eye position
    ang:RotateAroundAxis(ang:Up(), 90)  -- Rotate to ensure the text faces the right way

    -- **Angle offset system**:
    -- You can now adjust these values to modify the angle of the text.
    local angleOffset = Angle(90, 90, -90)  -- Adjust the angle offset as needed (rotate by 180 degrees on X-axis)

    -- Apply the angle offset and manually adjust to fix the inversion
    ang:RotateAroundAxis(ang:Up(), angleOffset.y)  -- Y-axis rotation
    ang:RotateAroundAxis(ang:Forward(), angleOffset.p)  -- X-axis rotation (adjust for your needs)
    ang:RotateAroundAxis(ang:Right(), angleOffset.r)  -- Z-axis rotation

    -- Render the rangefinder display relative to the text position
    cam.Start3D2D(textPos, ang, 0.009)
    cam.IgnoreZ(true)  -- Ignore Z-buffer to draw over the world

    -- Draw the background box for the text
    surface.SetDrawColor(0, 0, 0, 0)  -- Transparent background for text
    surface.DrawRect(-50, -25, 100, 50)

    -- Draw the distance text
    surface.SetTextColor(248, 188, 184, 255)  -- Set a brighter color for visibility
    surface.SetFont("DefaultFixed")
    local textWidth, textHeight = surface.GetTextSize(distanceText)
    surface.SetTextPos(-textWidth / 2, -textHeight / 2)  -- Center the text
	surface.SetTextPos( 25, -36 ) -- Set text position, top left corner
    surface.DrawText(distanceText)

    cam.End3D2D()
end)
