-- Script Principal: Constructeur de Maison
-- Place ce script dans ServerScriptService

local workspace = game:GetService("Workspace")
local house = Instance.new("Model")
house.Name = "Maison_Rudeus"
house.Parent = workspace

-- Configuration générale
local WALL_HEIGHT = 4
local WALL_THICKNESS = 0.2
local ROOM_WIDTH = 8
local ROOM_DEPTH = 6
local FLOOR_Y = 0

-- Fonction utilitaire pour créer un mur
local function createWall(name, size, cframe, parent)
    local wall = Instance.new("Part")
    wall.Name = name
    wall.Shape = Enum.PartType.Block
    wall.Material = Enum.Material.Brick
    wall.BrickColor = BrickColor.new("Medium stone grey")
    wall.Size = size
    wall.CFrame = cframe
    wall.CanCollide = true
    wall.Parent = parent
    return wall
end

-- Fonction pour créer un sol
local function createFloor(name, size, cframe, parent)
    local floor = Instance.new("Part")
    floor.Name = name
    floor.Shape = Enum.PartType.Block
    floor.Material = Enum.Material.Wood
    floor.BrickColor = BrickColor.new("Dark wood")
    floor.Size = size
    floor.CFrame = cframe
    floor.CanCollide = true
    floor.Parent = parent
    return floor
end

-- Fonction pour créer une porte
local function createDoor(name, position, parent)
    local door = Instance.new("Part")
    door.Name = name
    door.Shape = Enum.PartType.Block
    door.Material = Enum.Material.Wood
    door.BrickColor = BrickColor.new("Reddish brown")
    door.Size = Vector3.new(1, 2.5, 0.2)
    door.CFrame = CFrame.new(position)
    door.CanCollide = true
    door.Parent = parent
    
    -- Ajouter une valeur pour l'état de la porte
    local isOpen = Instance.new("BoolValue")
    isOpen.Name = "IsOpen"
    isOpen.Value = false
    isOpen.Parent = door
    
    return door
end

-- Fonction pour créer une fenêtre
local function createWindow(name, position, parent)
    local window = Instance.new("Part")
    window.Name = name
    window.Shape = Enum.PartType.Block
    window.Material = Enum.Material.Glass
    window.BrickColor = BrickColor.new("Light blue")
    window.Size = Vector3.new(2, 1.5, 0.1)
    window.CFrame = CFrame.new(position)
    window.CanCollide = false
    window.Parent = parent
    return window
end

-- CRÉATION DE LA MAISON

print("[🏠] Construction de la maison...")

-- ======== PIÈCE 1: SALON ========
local salon = Instance.new("Model")
salon.Name = "Salon"
salon.Parent = house

-- Sol du salon
local salonFloor = createFloor("SalonFloor", Vector3.new(ROOM_WIDTH, 0.5, ROOM_DEPTH), 
    CFrame.new(0, FLOOR_Y, 0), salon)

-- Murs du salon
local wall1 = createWall("WallFront", Vector3.new(ROOM_WIDTH, WALL_HEIGHT, WALL_THICKNESS),
    CFrame.new(0, WALL_HEIGHT/2, -ROOM_DEPTH/2), salon)

local wall2 = createWall("WallBack", Vector3.new(ROOM_WIDTH, WALL_HEIGHT, WALL_THICKNESS),
    CFrame.new(0, WALL_HEIGHT/2, ROOM_DEPTH/2), salon)

local wall3 = createWall("WallLeft", Vector3.new(WALL_THICKNESS, WALL_HEIGHT, ROOM_DEPTH),
    CFrame.new(-ROOM_WIDTH/2, WALL_HEIGHT/2, 0), salon)

local wall4 = createWall("WallRight", Vector3.new(WALL_THICKNESS, WALL_HEIGHT, ROOM_DEPTH),
    CFrame.new(ROOM_WIDTH/2, WALL_HEIGHT/2, 0), salon)

-- Porte d'entrée
local entranceDoor = createDoor("DoorEntrance", Vector3.new(0, 1.3, -ROOM_DEPTH/2 - 0.1), salon)

-- Fenêtres
local window1 = createWindow("Window1", Vector3.new(-2, 2.5, -ROOM_DEPTH/2 - 0.05), salon)
local window2 = createWindow("Window2", Vector3.new(2, 2.5, -ROOM_DEPTH/2 - 0.05), salon)

-- ======== PIÈCE 2: CHAMBRE ========
local chambre = Instance.new("Model")
chambre.Name = "Chambre"
chambre.Parent = house

local chambreFloor = createFloor("ChambreFloor", Vector3.new(ROOM_WIDTH, 0.5, ROOM_DEPTH),
    CFrame.new(ROOM_WIDTH + 2, FLOOR_Y, 0), chambre)

-- Murs de la chambre
local chambreWall1 = createWall("WallFront", Vector3.new(ROOM_WIDTH, WALL_HEIGHT, WALL_THICKNESS),
    CFrame.new(ROOM_WIDTH + 2, WALL_HEIGHT/2, -ROOM_DEPTH/2), chambre)

local chambreWall2 = createWall("WallBack", Vector3.new(ROOM_WIDTH, WALL_HEIGHT, WALL_THICKNESS),
    CFrame.new(ROOM_WIDTH + 2, WALL_HEIGHT/2, ROOM_DEPTH/2), chambre)

local chambreWall3 = createWall("WallLeft", Vector3.new(WALL_THICKNESS, WALL_HEIGHT, ROOM_DEPTH),
    CFrame.new(ROOM_WIDTH/2 + 2, WALL_HEIGHT/2, 0), chambre)

local chambreWall4 = createWall("WallRight", Vector3.new(WALL_THICKNESS, WALL_HEIGHT, ROOM_DEPTH),
    CFrame.new(ROOM_WIDTH + 2 + ROOM_WIDTH/2, WALL_HEIGHT/2, 0), chambre)

-- Porte de la chambre
local chambreDoor = createDoor("DoorChambre", Vector3.new(ROOM_WIDTH + 2, 1.3, -ROOM_DEPTH/2 - 0.1), chambre)

-- Fenêtre de la chambre
local chambreWindow = createWindow("WindowChambre", Vector3.new(ROOM_WIDTH + 2, 2.5, ROOM_DEPTH/2 + 0.05), chambre)

-- ======== PIÈCE 3: CUISINE ========
local cuisine = Instance.new("Model")
cuisine.Name = "Cuisine"
cuisine.Parent = house

local cuisineFloor = createFloor("CuisineFloor", Vector3.new(ROOM_WIDTH, 0.5, ROOM_DEPTH),
    CFrame.new(0, FLOOR_Y, ROOM_DEPTH + 2), cuisine)

-- Murs de la cuisine
local cuisineWall1 = createWall("WallFront", Vector3.new(ROOM_WIDTH, WALL_HEIGHT, WALL_THICKNESS),
    CFrame.new(0, WALL_HEIGHT/2, ROOM_DEPTH + 2 - ROOM_DEPTH/2), cuisine)

local cuisineWall2 = createWall("WallBack", Vector3.new(ROOM_WIDTH, WALL_HEIGHT, WALL_THICKNESS),
    CFrame.new(0, WALL_HEIGHT/2, ROOM_DEPTH + 2 + ROOM_DEPTH/2), cuisine)

local cuisineWall3 = createWall("WallLeft", Vector3.new(WALL_THICKNESS, WALL_HEIGHT, ROOM_DEPTH),
    CFrame.new(-ROOM_WIDTH/2, WALL_HEIGHT/2, ROOM_DEPTH + 2), cuisine)

local cuisineWall4 = createWall("WallRight", Vector3.new(WALL_THICKNESS, WALL_HEIGHT, ROOM_DEPTH),
    CFrame.new(ROOM_WIDTH/2, WALL_HEIGHT/2, ROOM_DEPTH + 2), cuisine)

-- Porte de la cuisine
local cuisineDoor = createDoor("DoorCuisine", Vector3.new(0, 1.3, ROOM_DEPTH + 2 - ROOM_DEPTH/2 - 0.1), cuisine)

-- Fenêtre de la cuisine
local cuisineWindow = createWindow("WindowCuisine", Vector3.new(2, 2.5, ROOM_DEPTH + 2 + ROOM_DEPTH/2 + 0.05), cuisine)

print("[✅] Maison construite avec succès !")
print("[📍] Maison située à: " .. tostring(house.PrimaryPart and house.PrimaryPart.Position or "N/A"))
print("[🚪] Pièces créées: Salon, Chambre, Cuisine")
print("[💡] Porte d'entrée et fenêtres ajoutées")
