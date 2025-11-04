return {
    -- General
    { key = "playeraction:Revive", title = "Revive", description = "Revive the selected player.", favorite = false, type = "general" },
    { key = "playeraction:MaxFoodWater", title = "Max Food/Water", description = "Restore food and water needs.", favorite = false, type = "general" },
    { key = "playeraction:RelieveStress", title = "Relieve Stress", description = "Remove stress from the player.", favorite = false, type = "general" },
    { key = "playeraction:RepairVehicle", title = "Repair Vehicle", description = "Repair the player's vehicle.", favorite = false, type = "general" },
    { key = "playeraction:AddCarToGarage", title = "Add Car to Garage", description = "Add the player's current vehicle to their garage.", favorite = false, type = "general" },
    { key = "playeraction:SetPedModel", title = "Set Ped Model", description = "Set the player's ped model.", favorite = false, type = "general", requiresPrompt = true, promptPlaceholders = { "Enter model name" } },
    { key = "playeraction:SetRoutingBucket", title = "Set Routing Bucket", description = "Set the player's routing bucket.", favorite = false, type = "general", requiresPrompt = true, promptPlaceholders = { "Enter bucket ID" } },
    { key = "playeraction:ClothingMenu", title = "Clothing Menu", description = "Open the clothing menu for the player.", favorite = false, type = "general" },
    { key = "playeraction:SetCharacterName", title = "Set Character Name", description = "Change the player's first and last name.", favorite = false, type = "general", requiresPrompt = true, promptPlaceholders = { "Enter first name", "Enter last name" } },
  
    -- Fun Actions
    { key = "playeraction:SetDrunk", title = "Make Drunk", description = "Makes the player appear drunk with visual effects.", favorite = false, type = "fun" },
    { key = "playeraction:Ragdoll", title = "Ragdoll", description = "Makes the player lose control and fall over.", favorite = false, type = "fun" },
    { key = "playeraction:SetFire", title = "Set on Fire", description = "Sets the player on fire briefly (non-lethal).", favorite = false, type = "fun" },
    { key = "playeraction:LaunchPlayer", title = "Launch Player", description = "Launches the player into the air.", favorite = false, type = "fun" },
    { key = "playeraction:ClownAttack", title = "Clown Attack", description = "Spawns hostile clowns to chase the player.", favorite = false, type = "fun" },
    { key = "playeraction:WildAttack", title = "Wild Animal Attack", description = "Spawns a mountain lion to chase the player.", favorite = false, type = "fun" },
    { key = "playeraction:MakeCompanion", title = "Give Pet Companion", description = "Gives the player a pet that follows them.", favorite = false, type = "fun", requiresPrompt = true, promptPlaceholders = { "Enter pet type (dog/cat)" } },
    { key = "playeraction:UFOAttack", title = "UFO Attack", description = "Spawns a UFO above the player for an abduction effect.", favorite = false, type = "fun" },
    { key = "playeraction:CloneAttack", title = "Clone Attack", description = "Spawn a clone of the player that attacks them.", favorite = false, type = "fun" },
    { key = "playeraction:CopyPedToMe", title = "Copy Ped To Me", description = "Copy the target player's appearance to yours.", favorite = false, type = "fun" },

    -- Teleport
    { key = "playeraction:Goto", title = "Goto", description = "Teleport to the player.", favorite = false, type = "teleport" },
    { key = "playeraction:Bring", title = "Bring", description = "Teleport the player to you.", favorite = false, type = "teleport" },
    { key = "playeraction:SendBack", title = "Send Back", description = "Send the player back to their previous position.", favorite = false, type = "teleport" },
    { key = "playeraction:SendToLocation", title = "Send to Location", description = "Send the player to a selected map location.", favorite = false, type = "teleport" },
  
    -- Surveillance
    { key = "playeraction:Spectate", title = "Spectate", description = "Spectate the player.", favorite = false, type = "surveillance" },
    { key = "playeraction:Screenshot", title = "Screenshot", description = "View a screenshot of the player's game.", favorite = false, type = "surveillance" },
  
    -- Monetary
    { key = "playeraction:GiveCash", title = "Give Cash", description = "Give cash to the player.", favorite = false, type = "monetary", requiresPrompt = true, promptPlaceholders = { "Enter the amount of cash to give" } },
    { key = "playeraction:RemoveCash", title = "Remove Cash", description = "Remove cash from the player.", favorite = false, type = "monetary", requiresPrompt = true, promptPlaceholders = { "Enter the amount of cash to take" } },
    { key = "playeraction:GiveBankMoney", title = "Give Bank", description = "Give bank money to the player.", favorite = false, type = "monetary", requiresPrompt = true, promptPlaceholders = { "Enter the amount of money to give" } },
    { key = "playeraction:RemoveBankMoney", title = "Remove Bank", description = "Remove bank money from the player.", favorite = false, type = "monetary", requiresPrompt = true, promptPlaceholders = { "Enter the amount of money to take" } },
  
    -- Job & Gang
    { key = "playeraction:SetJob", title = "Set Job", description = "Assign a job to the player.", favorite = false, type = "groups", requiresPrompt = true, promptPlaceholders = { "Enter job name", "Enter job grade" } },
    { key = "playeraction:RemoveFromJob", title = "Remove from Job", description = "Remove the player's current job.", favorite = false, type = "groups" },
    { key = "playeraction:SetGang", title = "Set Gang", description = "Add the player to a gang.", favorite = false, type = "groups", requiresPrompt = true, promptPlaceholders = { "Enter gang name", "Enter gang grade" } },
    { key = "playeraction:RemoveFromGang", title = "Remove from Gang", description = "Remove the player from their gang.", favorite = false, type = "groups" },
  
    -- Inventory
    { key = "playeraction:ViewInventory", title = "View Inventory", description = "View and manage the player's inventory.", favorite = false, type = "inventory" },
    { key = "playeraction:OpenInventory", title = "Open Inventory", description = "Open the player's inventory with your inventory resource.", favorite = false, type = "inventory" },
    { key = "playeraction:GiveItem", title = "Give Item", description = "Give an item to the player.", favorite = false, type = "inventory", requiresPrompt = true, promptPlaceholders = { "Enter item name", "Enter the amount to give" } },
    { key = "playeraction:RemoveItem", title = "Remove Item", description = "Remove an item from the player.", favorite = false, type = "inventory", requiresPrompt = true, promptPlaceholders = { "Enter item name", "Enter the amount to take" } },
    { key = "playeraction:ClearInventory", title = "Clear Inventory", description = "Clear all items from the player's inventory.", favorite = false, type = "inventory" },
  
    -- Punishment
    { key = "playeraction:Cuff", title = "Cuff", description = "Toggle handcuffs on the player.", favorite = false, type = "punishment" },
    { key = "playeraction:Freeze", title = "Freeze", description = "Toggle frozen state on the player.", favorite = false, type = "punishment" },
    { key = "playeraction:Kill", title = "Kill", description = "Kill the player.", favorite = false, type = "punishment" },
    { key = "playeraction:Kick", title = "Kick", description = "Kick the player from the server.", favorite = false, type = "punishment", requiresPrompt = true, promptPlaceholders = { "Enter reason" } },
    { key = "playeraction:Ban", title = "Ban", description = "Ban the player from the server.", favorite = false, type = "punishment", requiresPrompt = true, promptPlaceholders = { "Enter time in hours", "Enter reason" } },
    { key = "playeraction:Warn", title = "Warn", description = "Warn the player.", favorite = false, type = "punishment", requiresPrompt = true, promptPlaceholders = { "Enter reason" } }
} 