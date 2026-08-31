-- Gestionnaire de Lumières
-- Place ce script dans ServerScriptService

local function createLight(name, position, parent)
    local light = Instance.new("Part")
    light.Name = name
    light.Shape = Enum.PartType.Ball
    light.Material = Enum.Material.Neon
    light.BrickColor = BrickColor.new("Bright yellow")
    light.Size = Vector3.new(0.5, 0.5, 0.5)
    light.CanCollide = false
    light.CFrame = CFrame.new(position)
    light.Parent = parent
    
    -- Ajouter une vraie lumière
    local pointLight = Instance.new("PointLight")
    pointLight.Brightness = 3
    pointLight.Range = 20
    pointLight.Color = Color3.fromRGB(255, 255, 100)
    pointLight.Parent = light
    
    -- État de la lumière
    local isOn = Instance.new("BoolValue")
    isOn.Name = "IsOn"
    isOn.Value = true
    isOn.Parent = light
    
    return light
end

-- Placer les lumières dans la maison
local function setupLights()
    local house = game.Workspace:FindFirstChild("Maison_Rudeus")
    if not house then
        print("[❌] Maison non trouvée!")
        return
    end
    
    -- Lumière du salon
    local salonLight = createLight("LightSalon", Vector3.new(0, 3.5, 0), house)
    
    -- Lumière de la chambre
    local chambreLight = createLight("LightChambre", Vector3.new(8 + 2, 3.5, 0), house)
    
    -- Lumière de la cuisine
    local cuisineLight = createLight("LightCuisine", Vector3.new(0, 3.5, 6 + 2), house)
    
    print("[💡] " .. 3 .. " lumières ajoutées à la maison")
end

-- Initialiser les lumières
wait(1)
setupLights()
