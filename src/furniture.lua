-- Générateur de Mobilier
-- Place ce script dans ServerScriptService après main_house_builder.lua

local function createFurniture(name, size, cframe, material, color, parent)
    local furniture = Instance.new("Part")
    furniture.Name = name
    furniture.Shape = Enum.PartType.Block
    furniture.Material = material or Enum.Material.Wood
    furniture.BrickColor = color or BrickColor.new("Brown")
    furniture.Size = size
    furniture.CFrame = cframe
    furniture.CanCollide = true
    furniture.Parent = parent
    return furniture
end

-- Ajouter du mobilier
local function addFurniture()
    local house = game.Workspace:FindFirstChild("Maison_Rudeus")
    if not house then
        print("[❌] Maison non trouvée!")
        return
    end
    
    local salon = house:FindFirstChild("Salon")
    local chambre = house:FindFirstChild("Chambre")
    local cuisine = house:FindFirstChild("Cuisine")
    
    if salon then
        -- Canapé du salon
        createFurniture("Canape", Vector3.new(4, 1, 2), 
            CFrame.new(0, 1, 2), Enum.Material.Fabric, BrickColor.new("Dark stone grey"), salon)
        
        -- Table basse
        createFurniture("TableBasse", Vector3.new(2, 0.5, 1), 
            CFrame.new(0, 0.5, 1), Enum.Material.Wood, BrickColor.new("Brown"), salon)
        
        -- Étagère
        createFurniture("Etagere", Vector3.new(1, 3, 0.5), 
            CFrame.new(-3, 2, 0), Enum.Material.Wood, BrickColor.new("Brown"), salon)
    end
    
    if chambre then
        -- Lit
        createFurniture("Lit", Vector3.new(3, 1, 2.5), 
            CFrame.new(8 + 2, 1, -1.5), Enum.Material.Fabric, BrickColor.new("Bright blue"), chambre)
        
        -- Armoire
        createFurniture("Armoire", Vector3.new(1.5, 3, 0.7), 
            CFrame.new(8 + 2 - 3, 2, 2), Enum.Material.Wood, BrickColor.new("Dark wood"), chambre)
        
        -- Bureau
        createFurniture("Bureau", Vector3.new(2, 1, 1), 
            CFrame.new(8 + 2 + 2, 1, -2), Enum.Material.Wood, BrickColor.new("Brown"), chambre)
    end
    
    if cuisine then
        -- Table de cuisine
        createFurniture("TableCuisine", Vector3.new(2, 1, 1.5), 
            CFrame.new(0, 1, 6 + 2 - 2), Enum.Material.Wood, BrickColor.new("Brown"), cuisine)
        
        -- Comptoir
        createFurniture("Comptoir", Vector3.new(3, 1.5, 0.8), 
            CFrame.new(-2, 1, 6 + 2 + 1.5), Enum.Material.Brick, BrickColor.new("Light stone grey"), cuisine)
        
        -- Réfrigérateur
        createFurniture("Refrigerateur", Vector3.new(1, 2, 1), 
            CFrame.new(2, 1.5, 6 + 2 + 2.5), Enum.Material.Metal, BrickColor.new("Dark stone grey"), cuisine)
    end
    
    print("[🛋️] Mobilier ajouté aux pièces")
end

-- Initialiser le mobilier
wait(1.5)
addFurniture()
