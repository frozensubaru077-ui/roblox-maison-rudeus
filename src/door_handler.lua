-- Gestionnaire de Portes Interactives
-- Place ce script dans ServerScriptService

local DOOR_OPEN_ANGLE = 90
local DOOR_MOVE_SPEED = 0.1

-- Fonction pour trouver toutes les portes
local function findAllDoors()
    local doors = {}
    for _, part in pairs(game.Workspace:GetDescendants()) do
        if part.Name:match("Door") and part:IsA("Part") then
            table.insert(doors, part)
        end
    end
    return doors
end

-- Fonction pour ouvrir/fermer une porte
local function toggleDoor(door)
    local isOpen = door:FindFirstChild("IsOpen")
    if not isOpen then
        isOpen = Instance.new("BoolValue")
        isOpen.Name = "IsOpen"
        isOpen.Value = false
        isOpen.Parent = door
    end
    
    if isOpen.Value then
        -- Fermer la porte
        local targetCFrame = door.CFrame * CFrame.Angles(0, -math.rad(DOOR_OPEN_ANGLE), 0)
        isOpen.Value = false
    else
        -- Ouvrir la porte
        local targetCFrame = door.CFrame * CFrame.Angles(0, math.rad(DOOR_OPEN_ANGLE), 0)
        isOpen.Value = true
    end
end

-- Ajouter des ClickDetectors aux portes
local function setupDoors()
    local doors = findAllDoors()
    
    for _, door in pairs(doors) do
        local clickDetector = door:FindFirstChildOfClass("ClickDetector")
        if not clickDetector then
            clickDetector = Instance.new("ClickDetector")
            clickDetector.Parent = door
            
            clickDetector.MouseClick:Connect(function(player)
                print("[🚪] " .. player.Name .. " a cliqué sur la porte: " .. door.Name)
                toggleDoor(door)
            end)
        end
    end
    
    print("[✅] Portes interactives configurées: " .. tostring(#doors) .. " portes")
end

-- Initialiser le système de portes
wait(0.5)
setupDoors()
