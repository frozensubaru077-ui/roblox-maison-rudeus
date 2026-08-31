-- MAISON ROBLOX - VERSION CORRECTE
-- 1 GRANDE PIECE AVEC MURS QUI ENCLOSENT
-- Place ce script dans ServerScriptService et c'est tout

print("🏗️ CONSTRUCTION DE LA MAISON...")
wait(0.5)

local workspace = game:GetService("Workspace")

-- ========== SOL ==========
local sol = Instance.new("Part")
sol.Name = "Sol"
sol.Material = Enum.Material.Wood
sol.BrickColor = BrickColor.new("Dark wood")
sol.Size = Vector3.new(20, 0.5, 20)
sol.CFrame = CFrame.new(0, 0, 0)
sol.CanCollide = true
sol.Parent = workspace
print("✓ Sol créé")

-- ========== MUR AVANT (avec porte) ==========
local murAvant = Instance.new("Part")
murAvant.Name = "MurAvant"
murAvant.Material = Enum.Material.Brick
murAvant.BrickColor = BrickColor.new("Dark stone grey")
murAvant.Size = Vector3.new(20, 4, 0.5)
murAvant.CFrame = CFrame.new(0, 2, -10)
murAvant.CanCollide = true
murAvant.Parent = workspace
print("✓ Mur avant créé")

-- ========== MUR ARRIERE ==========
local murArriere = Instance.new("Part")
murArriere.Name = "MurArriere"
murArriere.Material = Enum.Material.Brick
murArriere.BrickColor = BrickColor.new("Dark stone grey")
murArriere.Size = Vector3.new(20, 4, 0.5)
murArriere.CFrame = CFrame.new(0, 2, 10)
murArriere.CanCollide = true
murArriere.Parent = workspace
print("✓ Mur arrière créé")

-- ========== MUR GAUCHE ==========
local murGauche = Instance.new("Part")
murGauche.Name = "MurGauche"
murGauche.Material = Enum.Material.Brick
murGauche.BrickColor = BrickColor.new("Dark stone grey")
murGauche.Size = Vector3.new(0.5, 4, 20)
murGauche.CFrame = CFrame.new(-10, 2, 0)
murGauche.CanCollide = true
murGauche.Parent = workspace
print("✓ Mur gauche créé")

-- ========== MUR DROIT ==========
local murDroit = Instance.new("Part")
murDroit.Name = "MurDroit"
murDroit.Material = Enum.Material.Brick
murDroit.BrickColor = BrickColor.new("Dark stone grey")
murDroit.Size = Vector3.new(0.5, 4, 20)
murDroit.CFrame = CFrame.new(10, 2, 0)
murDroit.CanCollide = true
murDroit.Parent = workspace
print("✓ Mur droit créé")

-- ========== TOIT ==========
local toit = Instance.new("Part")
toit.Name = "Toit"
toit.Material = Enum.Material.Slate
toit.BrickColor = BrickColor.new("Dark red")
toit.Size = Vector3.new(20.5, 0.5, 20.5)
toit.CFrame = CFrame.new(0, 4.25, 0)
toit.CanCollide = true
toit.Parent = workspace
print("✓ Toit créé")

-- ========== PORTE D'ENTREE ==========
local porte = Instance.new("Part")
porte.Name = "Porte"
porte.Material = Enum.Material.Wood
porte.BrickColor = BrickColor.new("Reddish brown")
porte.Size = Vector3.new(2, 3, 0.3)
porte.CFrame = CFrame.new(0, 1.5, -10.15)
porte.CanCollide = true
porte.Parent = workspace

local clickDetector = Instance.new("ClickDetector")
clickDetector.Parent = porte

local porteouverte = false
clickDetector.MouseClick:Connect(function(player)
    if not porteouverte then
        porte.CFrame = CFrame.new(0, 1.5, -10.15) * CFrame.Angles(0, math.rad(90), 0)
        porteouverte = true
        print("🚪 PORTE OUVERTE!")
    else
        porte.CFrame = CFrame.new(0, 1.5, -10.15)
        porteouverte = false
        print("🚪 PORTE FERMEE!")
    end
end)
print("✓ Porte d'entrée créée (clique dessus!)")

-- ========== FENETRES ==========
local fenetre1 = Instance.new("Part")
fenetre1.Name = "Fenetre1"
fenetre1.Material = Enum.Material.Glass
fenetre1.BrickColor = BrickColor.new("Cyan")
fenetre1.Size = Vector3.new(2, 1.5, 0.2)
fenetre1.CFrame = CFrame.new(-5, 2.5, -10.2)
fenetre1.CanCollide = false
fenetre1.Parent = workspace

local fenetre2 = Instance.new("Part")
fenetre2.Name = "Fenetre2"
fenetre2.Material = Enum.Material.Glass
fenetre2.BrickColor = BrickColor.new("Cyan")
fenetre2.Size = Vector3.new(2, 1.5, 0.2)
fenetre2.CFrame = CFrame.new(5, 2.5, -10.2)
fenetre2.CanCollide = false
fenetre2.Parent = workspace
print("✓ Fenêtres créées")

-- ========== LUMIERE PRINCIPALE ==========
local lumiere = Instance.new("Part")
lumiere.Name = "Lumiere"
lumiere.Shape = Enum.PartType.Ball
lumiere.Material = Enum.Material.Neon
lumiere.BrickColor = BrickColor.new("Bright yellow")
lumiere.Size = Vector3.new(0.6, 0.6, 0.6)
lumiere.CanCollide = false
lumiere.CFrame = CFrame.new(0, 3.7, 0)
lumiere.Parent = workspace

local pointLight = Instance.new("PointLight")
pointLight.Brightness = 4
pointLight.Range = 40
pointLight.Color = Color3.fromRGB(255, 255, 200)
pointLight.Parent = lumiere
print("✓ Lumière créée")

-- ========== MOBILIER ==========

-- CANAPE (salon)
local canape = Instance.new("Part")
canape.Name = "Canape"
canape.Material = Enum.Material.Fabric
canape.BrickColor = BrickColor.new("Maroon")
canape.Size = Vector3.new(6, 1.2, 2)
canape.CFrame = CFrame.new(0, 0.6, 3)
canape.CanCollide = true
canape.Parent = workspace

-- TABLE BASSE
local tableBasse = Instance.new("Part")
tableBasse.Name = "TableBasse"
tableBasse.Material = Enum.Material.Wood
tableBasse.BrickColor = BrickColor.new("Brown")
tableBasse.Size = Vector3.new(3, 0.5, 2)
tableBasse.CFrame = CFrame.new(0, 0.25, 1)
tableBasse.CanCollide = true
tableBasse.Parent = workspace

-- LIT
local lit = Instance.new("Part")
lit.Name = "Lit"
lit.Material = Enum.Material.Fabric
lit.BrickColor = BrickColor.new("Bright blue")
lit.Size = Vector3.new(3, 1, 2.5)
lit.CFrame = CFrame.new(-6, 0.5, -5)
lit.CanCollide = true
lit.Parent = workspace

-- ARMOIRE
local armoire = Instance.new("Part")
armoire.Name = "Armoire"
armoire.Material = Enum.Material.Wood
armoire.BrickColor = BrickColor.new("Dark wood")
armoire.Size = Vector3.new(1.5, 3, 0.8)
armoire.CFrame = CFrame.new(6, 1.5, -6)
armoire.CanCollide = true
armoire.Parent = workspace

-- TABLE DE CUISINE
local tableKitchen = Instance.new("Part")
tableKitchen.Name = "TableKitchen"
tableKitchen.Material = Enum.Material.Wood
tableKitchen.BrickColor = BrickColor.new("Brown")
tableKitchen.Size = Vector3.new(2.5, 1, 2)
tableKitchen.CFrame = CFrame.new(0, 0.5, -3)
tableKitchen.CanCollide = true
tableKitchen.Parent = workspace

-- REFRIGERATEUR
local frigo = Instance.new("Part")
frigo.Name = "Refrigerateur"
frigo.Material = Enum.Material.Metal
frigo.BrickColor = BrickColor.new("Dark stone grey")
frigo.Size = Vector3.new(1.2, 2.5, 0.8)
frigo.CFrame = CFrame.new(7, 1.25, 7)
frigo.CanCollide = true
frigo.Parent = workspace

print("✓ Mobilier ajouté")

-- ========== MESSAGE FINAL ==========
print("\n")
print("╔════════════════════════════════╗")
print("║   ✨ MAISON TERMINEE! ✨     ║")
print("╚════════════════════════════════╝")
print("\n🏠 Maison construite avec:")
print("  • 4 murs complets qui enferment")
print("  • 1 toit")
print("  • 1 porte interactive (clique dessus!)")
print("  • 2 fenêtres")
print("  • Lumière")
print("  • Mobilier (canapé, lit, armoire, tables, frigo)")
print("\n🎮 Contrôles:")
print("  • WASD = Déplacement")
print("  • Souris = Caméra")
print("  • Clique sur la PORTE pour l'ouvrir/fermer")
print("\n")
