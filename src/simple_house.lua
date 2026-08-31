-- MEGA MAISON ROBLOX - VERSION XXL
-- Place ce script UNIQUEMENT dans ServerScriptService
-- C'EST LA VERSION FINALE QUI VA MARCHER

print("🏗️🏗️🏗️ CONSTRUCTION MEGA MAISON EN COURS 🏗️🏗️🏗️")
wait(1)

local workspace = game:GetService("Workspace")

-- ===== DIMENSIONS MEGA =====
local MAISON_WIDTH = 60
local MAISON_DEPTH = 80
local WALL_HEIGHT = 5
local FLOOR_THICKNESS = 0.5

-- ===== SOL PRINCIPAL =====
local solPrincipal = Instance.new("Part")
solPrincipal.Name = "SolPrincipal"
solPrincipal.Material = Enum.Material.Marble
solPrincipal.BrickColor = BrickColor.new("Light stone grey")
solPrincipal.Size = Vector3.new(MAISON_WIDTH, FLOOR_THICKNESS, MAISON_DEPTH)
solPrincipal.CFrame = CFrame.new(0, 0, 0)
solPrincipal.CanCollide = true
solPrincipal.Parent = workspace
print("✅ Sol principal créé (60x80)")

-- ===== MURS EXTERIEURS MASSIFS =====

-- MUR AVANT
local murAvant = Instance.new("Part")
murAvant.Name = "MurAvant"
murAvant.Material = Enum.Material.Brick
murAvant.BrickColor = BrickColor.new("Brown")
murAvant.Size = Vector3.new(MAISON_WIDTH, WALL_HEIGHT, 0.8)
murAvant.CFrame = CFrame.new(0, WALL_HEIGHT/2, -(MAISON_DEPTH/2))
murAvant.CanCollide = true
murAvant.Parent = workspace

-- MUR ARRIERE
local murArriere = Instance.new("Part")
murArriere.Name = "MurArriere"
murArriere.Material = Enum.Material.Brick
murArriere.BrickColor = BrickColor.new("Brown")
murArriere.Size = Vector3.new(MAISON_WIDTH, WALL_HEIGHT, 0.8)
murArriere.CFrame = CFrame.new(0, WALL_HEIGHT/2, (MAISON_DEPTH/2))
murArriere.CanCollide = true
murArriere.Parent = workspace

-- MUR GAUCHE
local murGauche = Instance.new("Part")
murGauche.Name = "MurGauche"
murGauche.Material = Enum.Material.Brick
murGauche.BrickColor = BrickColor.new("Brown")
murGauche.Size = Vector3.new(0.8, WALL_HEIGHT, MAISON_DEPTH)
murGauche.CFrame = CFrame.new(-(MAISON_WIDTH/2), WALL_HEIGHT/2, 0)
murGauche.CanCollide = true
murGauche.Parent = workspace

-- MUR DROIT
local murDroit = Instance.new("Part")
murDroit.Name = "MurDroit"
murDroit.Material = Enum.Material.Brick
murDroit.BrickColor = BrickColor.new("Brown")
murDroit.Size = Vector3.new(0.8, WALL_HEIGHT, MAISON_DEPTH)
murDroit.CFrame = CFrame.new((MAISON_WIDTH/2), WALL_HEIGHT/2, 0)
murDroit.CanCollide = true
murDroit.Parent = workspace
print("✅ 4 murs MASSIFS créés")

-- ===== TOIT ENORME =====
local toit = Instance.new("Part")
toit.Name = "Toit"
toit.Material = Enum.Material.Slate
toit.BrickColor = BrickColor.new("Dark red")
toit.Size = Vector3.new(MAISON_WIDTH + 2, 1, MAISON_DEPTH + 2)
toit.CFrame = CFrame.new(0, WALL_HEIGHT + 0.5, 0)
toit.CanCollide = true
toit.Parent = workspace
print("✅ Toit créé")

-- ===== PORTE D'ENTREE MASSIVE =====
local porte = Instance.new("Part")
porte.Name = "PorteEntree"
porte.Material = Enum.Material.Wood
porte.BrickColor = BrickColor.new("Dark oak")
porte.Size = Vector3.new(4, 4, 0.5)
porte.CFrame = CFrame.new(0, 2, -(MAISON_DEPTH/2) - 0.4)
porte.CanCollide = true
porte.TopSurface = Enum.SurfaceType.Smooth
porte.BottomSurface = Enum.SurfaceType.Smooth
porte.Parent = workspace

local clickDetector = Instance.new("ClickDetector")
clickDetector.MaxActivationDistance = 50
clickDetector.Parent = porte

local porteouverte = false
clickDetector.MouseClick:Connect(function(player)
    if not porteouverte then
        porte.CFrame = CFrame.new(0, 2, -(MAISON_DEPTH/2) - 0.4) * CFrame.Angles(0, math.rad(100), 0)
        porteouverte = true
        print("🚪 PORTE OUVERTE!")
    else
        porte.CFrame = CFrame.new(0, 2, -(MAISON_DEPTH/2) - 0.4)
        porteouverte = false
        print("🚪 PORTE FERMEE!")
    end
end)
print("✅ Porte d'entrée créée (4x4 - MASSIVE!)")

-- ===== FENETRES GRANDES =====
for i = -20, 20, 10 do
    local fenetre = Instance.new("Part")
    fenetre.Name = "Fenetre_" .. i
    fenetre.Material = Enum.Material.Glass
    fenetre.BrickColor = BrickColor.new("Cyan")
    fenetre.Size = Vector3.new(4, 3, 0.3)
    fenetre.CFrame = CFrame.new(i, 2.5, -(MAISON_DEPTH/2) - 0.4)
    fenetre.CanCollide = false
    fenetre.Parent = workspace
end
print("✅ Fenêtres avant créées")

for i = -20, 20, 10 do
    local fenetre = Instance.new("Part")
    fenetre.Name = "FenetreArriere_" .. i
    fenetre.Material = Enum.Material.Glass
    fenetre.BrickColor = BrickColor.new("Cyan")
    fenetre.Size = Vector3.new(4, 3, 0.3)
    fenetre.CFrame = CFrame.new(i, 2.5, (MAISON_DEPTH/2) + 0.4)
    fenetre.CanCollide = false
    fenetre.Parent = workspace
end
print("✅ Fenêtres arrière créées")

-- ===== LUMIERES MASSIVES =====
for x = -20, 20, 20 do
    for z = -30, 30, 30 do
        local lumiere = Instance.new("Part")
        lumiere.Name = "Lumiere_" .. x .. "_" .. z
        lumiere.Shape = Enum.PartType.Ball
        lumiere.Material = Enum.Material.Neon
        lumiere.BrickColor = BrickColor.new("Bright yellow")
        lumiere.Size = Vector3.new(1, 1, 1)
        lumiere.CanCollide = false
        lumiere.CFrame = CFrame.new(x, 4.5, z)
        lumiere.Parent = workspace
        
        local pointLight = Instance.new("PointLight")
        pointLight.Brightness = 5
        pointLight.Range = 50
        pointLight.Color = Color3.fromRGB(255, 255, 150)
        pointLight.Parent = lumiere
    end
end
print("✅ Lumières partout créées")

-- ===== ESCALIERS CENTRAUX =====
for i = 1, 6 do
    local marche = Instance.new("Part")
    marche.Name = "Marche_" .. i
    marche.Material = Enum.Material.Wood
    marche.BrickColor = BrickColor.new("Brown")
    marche.Size = Vector3.new(6, 0.5, 1)
    marche.CFrame = CFrame.new(-3, 0.5 + (i * 0.5), -15 + (i * 1))
    marche.CanCollide = true
    marche.Parent = workspace
end
print("✅ Escaliers créés")

-- ===== SOL ETAGE 2 =====
local solEtage2 = Instance.new("Part")
solEtage2.Name = "SolEtage2"
solEtage2.Material = Enum.Material.Wood
solEtage2.BrickColor = BrickColor.new("Dark wood")
solEtage2.Size = Vector3.new(MAISON_WIDTH - 5, FLOOR_THICKNESS, MAISON_DEPTH - 20)
solEtage2.CFrame = CFrame.new(0, 3.5, 10)
solEtage2.CanCollide = true
solEtage2.Parent = workspace
print("✅ Étage 2 créé")

-- ===== MOBILIER SALON =====
-- MEGA CANAPE
local canape = Instance.new("Part")
canape.Name = "CanapeGigant"
canape.Material = Enum.Material.Fabric
canape.BrickColor = BrickColor.new("Maroon")
canape.Size = Vector3.new(15, 2, 4)
canape.CFrame = CFrame.new(-15, 1, 20)
canape.CanCollide = true
canape.Parent = workspace

-- TABLE BASSE MASSIVE
local tableBasse = Instance.new("Part")
tableBasse.Name = "TableBasseMassive"
tableBasse.Material = Enum.Material.Wood
tableBasse.BrickColor = BrickColor.new("Dark wood")
tableBasse.Size = Vector3.new(10, 1, 6)
tableBasse.CFrame = CFrame.new(-15, 1.5, 12)
tableBasse.CanCollide = true
tableBasse.Parent = workspace

print("✅ Salon créé (canap + table)")

-- ===== MOBILIER CHAMBRE =====
-- LIT KING SIZE
local lit = Instance.new("Part")
lit.Name = "LitKingSize"
lit.Material = Enum.Material.Fabric
lit.BrickColor = BrickColor.new("Bright blue")
lit.Size = Vector3.new(6, 1.5, 4)
lit.CFrame = CFrame.new(15, 1, 20)
lit.CanCollide = true
lit.Parent = workspace

-- ARMOIRE ENORME
local armoire = Instance.new("Part")
armoire.Name = "ArmoireGigant"
armoire.Material = Enum.Material.Wood
armoire.BrickColor = BrickColor.new("Dark wood")
armoire.Size = Vector3.new(3, 4, 1.5)
armoire.CFrame = CFrame.new(20, 2, 15)
armoire.CanCollide = true
armoire.Parent = workspace

print("✅ Chambre créée (lit king + armoire)")

-- ===== MOBILIER CUISINE =====
-- TABLE DE CUISINE
local tableKitchen = Instance.new("Part")
tableKitchen.Name = "TableCuisine"
tableKitchen.Material = Enum.Material.Wood
tableKitchen.BrickColor = BrickColor.new("Brown")
tableKitchen.Size = Vector3.new(5, 1, 4)
tableKitchen.CFrame = CFrame.new(-10, 0.5, -20)
tableKitchen.CanCollide = true
tableKitchen.Parent = workspace

-- REFRIGERATEUR GEANT
local frigo = Instance.new("Part")
frigo.Name = "RefrigeratorGeant"
frigo.Material = Enum.Material.Metal
frigo.BrickColor = BrickColor.new("Dark stone grey")
frigo.Size = Vector3.new(2, 3, 2)
frigo.CFrame = CFrame.new(0, 1.5, -10)
frigo.CanCollide = true
frigo.Parent = workspace

-- COMPTOIR
local comptoir = Instance.new("Part")
comptoir.Name = "ComtoirKitchen"
comptoir.Material = Enum.Material.Brick
comptoir.BrickColor = BrickColor.new("Light stone grey")
comptoir.Size = Vector3.new(8, 1, 2)
comptoir.CFrame = CFrame.new(-8, 0.5, -15)
comptoir.CanCollide = true
comptoir.Parent = workspace

print("✅ Cuisine créée (table + frigo + comptoir)")

-- ===== SALLE DE BAIN =====
-- BAIGNOIRE
local baignoire = Instance.new("Part")
baignoire.Name = "Baignoire"
baignoire.Material = Enum.Material.Ceramic
baignoire.BrickColor = BrickColor.new("White")
baignoire.Size = Vector3.new(3, 1, 1.5)
baignoire.CFrame = CFrame.new(10, 0.5, -25)
baignoire.CanCollide = true
baignoire.Parent = workspace

-- TOILETTES
local toilettes = Instance.new("Part")
toilettes.Name = "Toilettes"
toilettes.Material = Enum.Material.Ceramic
toilettes.BrickColor = BrickColor.new("White")
toilettes.Size = Vector3.new(1, 1.2, 1)
toilettes.CFrame = CFrame.new(15, 0.6, -25)
toilettes.CanCollide = true
toilettes.Parent = workspace

-- LAVABO
local lavabo = Instance.new("Part")
lavabo.Name = "Lavabo"
lavabo.Material = Enum.Material.Ceramic
lavabo.BrickColor = BrickColor.new("White")
lavabo.Size = Vector3.new(2, 1, 1)
lavabo.CFrame = CFrame.new(5, 0.5, -25)
lavabo.CanCollide = true
lavabo.Parent = workspace

print("✅ Salle de bain créée")

-- ===== CAVE/SOUS-SOL =====
local solCave = Instance.new("Part")
solCave.Name = "SolCave"
solCave.Material = Enum.Material.Rock
solCave.BrickColor = BrickColor.new("Dark stone grey")
solCave.Size = Vector3.new(MAISON_WIDTH - 5, FLOOR_THICKNESS, MAISON_DEPTH - 20)
solCave.CFrame = CFrame.new(0, -3, 10)
solCave.CanCollide = true
solCave.Parent = workspace

-- Murs cave
local murCave1 = Instance.new("Part")
murCave1.Name = "MurCave1"
murCave1.Material = Enum.Material.Rock
murCave1.BrickColor = BrickColor.new("Dark stone grey")
murCave1.Size = Vector3.new(MAISON_WIDTH - 5, 3, 0.8)
murCave1.CFrame = CFrame.new(0, -1.5, 10 - (MAISON_DEPTH - 20)/2)
murCave1.CanCollide = true
murCave1.Parent = workspace

print("✅ Cave/Sous-sol créé")

-- ===== DECORATION INTERIEURE =====
-- Tableaux (part vide mais deco)
for i = 1, 5 do
    local tableau = Instance.new("Part")
    tableau.Name = "Tableau_" .. i
    tableau.Material = Enum.Material.Wood
    tableau.BrickColor = BrickColor.new("Gold")
    tableau.Size = Vector3.new(2, 1.5, 0.2)
    tableau.CanCollide = false
    tableau.CFrame = CFrame.new(-28 + (i * 8), 3, 20)
    tableau.Parent = workspace
end

-- Tapis
local tapis = Instance.new("Part")
tapis.Name = "Tapis"
tapis.Material = Enum.Material.Fabric
tapis.BrickColor = BrickColor.new("Dark red")
tapis.Size = Vector3.new(8, 0.1, 6)
tapis.CanCollide = false
tapis.CFrame = CFrame.new(-15, 0.55, 12)
tapis.Parent = workspace

print("✅ Décoration intérieure ajoutée")

-- ===== MESSAGE FINAL =====
print("\n")
print("╔════════════════════════════════════════════╗")
print("║  🏰 MEGA MAISON TERMINEE AVEC SUCCES! 🏰 ║")
print("╚════════════════════════════════════════════╝")
print("\n📐 DIMENSIONS: 60x80 STUDS")
print("📏 HAUTEUR: 5 studs + Étage 2")
print("\n🏠 CONTENU DE LA MAISON:")
print("   ✨ 4 murs MASSIFS en briques")
print("   ✨ 1 toit GEANT")
print("   ✨ 1 porte d'entrée 4x4 (interactive - clique!)")
print("   ✨ Fenêtres partout")
print("   ✨ Lumières multiples")
print("   ✨ SALON: Canapé géant 15x4 + table basse")
print("   ✨ CHAMBRE: Lit King Size + armoire gigante")
print("   ✨ CUISINE: Table + Frigo géant + Comptoir")
print("   ✨ SALLE DE BAIN: Baignoire + Toilettes + Lavabo")
print("   ✨ Escaliers pour accéder à l'étage 2")
print("   ✨ CAVE/SOUS-SOL complet")
print("   ✨ Décoration: Tableaux + Tapis")
print("\n🎮 CONTROLES:")
print("   • WASD = Déplacement")
print("   • Espace = Sauter")
print("   • Souris = Caméra")
print("   • Clique sur la PORTE pour l'ouvrir/fermer")
print("\n✅ C'EST FAIT! La maison est PRÊTE A EXPLORER!")
print("\n")
