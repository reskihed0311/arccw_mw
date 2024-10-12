hook.Add("PopulateWeapons", "zzz_ARCCW_SubCategories", function(pnlContent, tree, anode)

    timer.Simple(0, function()
        -- Loop through the weapons and add them to the menu
        local Weapons = list.Get("Weapon")
        local Categorised = {}
        local ARCWCats = {}

        -- Build into categories + subcategories
        for k, weapon in pairs(Weapons) do
            if not weapon.Spawnable then continue end
            if not weapons.IsBasedOn(k, "arccw_base") then continue end

            -- Get the weapon category as a string
            local Category = weapon.Category or "Other2"
            local WepTable = weapons.Get(weapon.ClassName)
            if not isstring(Category) then
                Category = tostring(Category)
            end

            -- Get the weapon subcategory as a string
            local SubCategory = "Other"
            if WepTable and WepTable.SubCategory then
                SubCategory = WepTable.SubCategory
                if not isstring(SubCategory) then
                    SubCategory = tostring(SubCategory)
                end
            end

            -- Insert it into our categorised table
            Categorised[Category] = Categorised[Category] or {}
            Categorised[Category][SubCategory] = Categorised[Category][SubCategory] or {}
            table.insert(Categorised[Category][SubCategory], weapon)
            ARCWCats[Category] = true
        end

        -- Iterate through each category in the weapons table
        for _, node in pairs(tree:Root():GetChildNodes()) do

            if not ARCWCats[node:GetText()] then continue end

            -- Get the subcategories registered in this category
            local catSubcats = Categorised[node:GetText()]

            if not catSubcats then continue end

            -- Overwrite the icon populate function with a custom one
            node.DoPopulate = function(self)

                -- Create the container panel
                self.PropPanel = vgui.Create("ContentContainer", pnlContent)
                self.PropPanel:SetVisible(false)
                self.PropPanel:SetTriggerSpawnlistChange(false)

                -- Iterate through the subcategories
                for subcatName, subcatWeps in SortedPairs(catSubcats) do

                    -- Create the subcategory header, if more than one exists for this category
                    if table.Count(catSubcats) > 1 then
                        local label = vgui.Create("ContentHeader", self.PropPanel)
                        label:SetText(subcatName)
                        self.PropPanel:Add(label)
                    end

                    -- Create the clickable icon
                    for _, ent in SortedPairsByMemberValue(subcatWeps, "PrintName") do
                        spawnmenu.CreateContentIcon(ent.ScriptedEntityType or "weapon", self.PropPanel, {
                            nicename  = ent.PrintName or ent.ClassName,
                            spawnname = ent.ClassName,
                            material  = ent.IconOverride or "entities/" .. ent.ClassName .. ".png",
                            admin     = ent.AdminOnly
                        })
                    end
                end
            end

            -- If we click on the node populate it and switch to it.
            node.DoClick = function(self)
                self:DoPopulate()
                pnlContent:SwitchPanel(self.PropPanel)
            end
        end

        -- Select the first node
        local FirstNode = tree:Root():GetChildNode(0)
        if IsValid(FirstNode) then
            FirstNode:InternalDoClick()
        end
    end)
end)