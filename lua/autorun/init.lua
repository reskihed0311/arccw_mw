-- lua/autorun/init.lua

-- Make sure to send the client-side files to clients if needed
if SERVER then
    AddCSLuaFile("arccw/client/cl_subcategories.lua")
    -- Include any server-side scripts here, if necessary
end

-- Include client-side files
if CLIENT then
    include("arccw/client/cl_subcategories.lua")
end
