-- SCRIPT SIMPLE - MAISON BASIQUE
-- Place UNIQUEMENT ce script dans ServerScriptService
-- C'est tout ce qu'il faut

print("======== DEBUT CONSTRUCTION ========")

local workspace = game:GetService("Workspace")

-- Créer le sol
local sol = Instance.new("Part")
sol.Name = "Sol"
sol.Shape = Enum.PartType.Block
sol.Material = Enum.Material.Brick
sol.BrickColor = BrickColor.new("Brick yellow")
sol.Size = Vector3.new(50, 1, 50)
sol.CFrame = CFrame.new(0, 0, 0)
sol.CanCollide = true
sol.Parent = workspace
print("✓ Sol créé")

-- SALON
local salonSol = Instance.new("Part")
salonSol.Name = "SalonSol"
salonSol.Material = Enum.Material.Wood
salonSol.BrickColor = BrickColor.new("Dark wood")
salonSol.Size = Vector3.new(10, 0.5, 10)
salonSol.CFrame = CFrame.new(0, 1, 0)
salonSol.CanCollide = true
salonSol.Parent = workspace
print("✓ Sol Salon")

-- Murs Salon
local mur1 = Instance.new("Part")
mur1.Name = "MurSalon1"
mur1.Material = Enum.Material.Brick
mur1.BrickColor = BrickColor.new("Medium stone grey")
mur1.Size = Vector3.new(10, 4, 0.5)
mur1.CFrame = CFrame.new(0, 3, -5)
mur1.CanCollide = true
mur1.Parent = workspace

local mur2 = Instance.new("Part")
mur2.Name = "MurSalon2"
mur2.Material = Enum.Material.Brick
mur2.BrickColor = BrickColor.new("Medium stone grey")
mur2.Size = Vector3.new(10, 4, 0.5)
mur2.CFrame = CFrame.new(0, 3, 5)
mur2.CanCollide = true
mur2.Parent = workspace

local mur3 = Instance.new("Part")
mur3.Name = "MurSalon3"
mur3.Material = Enum.Material.Brick
mur3.BrickColor = BrickColor.new("Medium stone grey")
mur3.Size = Vector3.new(0.5, 4, 10)
mur3.CFrame = CFrame.new(-5, 3, 0)
mur3.CanCollide = true
mur3.Parent = workspace

local mur4 = Instance.new("Part")
mur4.Name = "MurSalon4"
mur4.Material = Enum.Material.Brick
mur4.BrickColor = BrickColor.new("Medium stone grey")
mur4.Size = Vector3.new(0.5, 4, 10)
mur4.CFrame = CFrame.new(5, 3, 0)
mur4.CanCollide = true
mur4.Parent = workspace
print("✓ Murs Salon")

-- PORTE SALON
local porte = Instance.new("Part")
porte.Name = "Porte"
porte.Material = Enum.Material.Wood
porte.BrickColor = BrickColor.new("Brown")
porte.Size = Vector3.new(1.5, 2.5, 0.3)
porte.CFrame = CFrame.new(0, 1.5, -5.2)
porte.CanCollide = true
porte.Parent = workspace

-- Ajouter ClickDetector pour ouvrir/fermer
local clickDetector = Instance.new("ClickDetector")
clickDetector.Parent = porte

local porteouverte = false
clickDetector.MouseClick:Connect(function(player)
    if not porteouverte then
        porte.CFrame = CFrame.new(0, 1.5, -5.2) * CFrame.Angles(0, math.rad(90), 0)
        porteouverte = true
        print("🚪 Porte ouverte!")
    else
        porte.CFrame = CFrame.new(0, 1.5, -5.2)
        porteouverte = false
        print("🚪 Porte fermée!")
    end
end)
print("✓ Porte créée (clique dessus!)")

-- LUMIERE
local lumiere = Instance.new("Part")
lumiere.Name = "Lumiere"
lumiere.Shape = Enum.PartType.Ball
lumiere.Material = Enum.Material.Neon
lumiere.BrickColor = BrickColor.new("Bright yellow")
lumiere.Size = Vector3.new(0.5, 0.5, 0.5)
lumiere.CanCollide = false
lumiere.CFrame = CFrame.new(0, 3.5, 0)
lumiere.Parent = workspace

local pointLight = Instance.new("PointLight")
pointLight.Brightness = 3
pointLight.Range = 30
pointLight.Parent = lumiere
print("✓ Lumière créée")

-- MOBILIER SIMPLE
-- Canapé
local canape = Instance.new("Part")
canape.Name = "Canape"
canape.Material = Enum.Material.Fabric
canape.BrickColor = BrickColor.new("Dark stone grey")
canape.Size = Vector3.new(4, 1, 2)
canape.CFrame = CFrame.new(0, 1.5, 2)
canape.CanCollide = true
canape.Parent = workspace

-- Table basse
local table = Instance.new("Part")
table.Name = "Table"
table.Material = Enum.Material.Wood
table.BrickColor = BrickColor.new("Brown")
table.Size = Vector3.new(2, 0.5, 1.5)
table.CFrame = CFrame.new(0, 1.2, 0.5)
table.CanCollide = true
table.Parent = workspace
print("✓ Mobilier créé")

print("======== MAISON TERMINÉE ========")
print("✨ La maison est prête!")
print("🚪 Clique sur la porte pour l'ouvrir/fermer")
print("🚶 Utilise WASD pour te déplacer")
