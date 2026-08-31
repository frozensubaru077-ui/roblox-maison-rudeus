# 📖 Guide d'Installation

## Étapes pour installer la maison Roblox

### 1️⃣ Préparer Roblox Studio
- Ouvre **Roblox Studio**
- Crée un **nouveau projet** (ou ouvre un existant)
- Dans l'explorateur, localise **ServerScriptService**

### 2️⃣ Installer les scripts

#### Script 1: Constructeur principal
1. Click droit sur **ServerScriptService**
2. Insère un **Script** (pas LocalScript)
3. Copie le contenu de `src/main_house_builder.lua`
4. Colle dans le script
5. Renomme le script: `HouseBuilder`

#### Script 2: Gestionnaire de portes
1. Crée un nouveau Script dans **ServerScriptService**
2. Copie le contenu de `src/door_handler.lua`
3. Colle dans le script
4. Renomme: `DoorHandler`

#### Script 3: Gestionnaire de lumières
1. Crée un nouveau Script dans **ServerScriptService**
2. Copie le contenu de `src/light_handler.lua`
3. Colle dans le script
4. Renomme: `LightHandler`

#### Script 4 (Optionnel): Mobilier
1. Crée un nouveau Script dans **ServerScriptService**
2. Copie le contenu de `src/furniture.lua`
3. Colle dans le script
4. Renomme: `FurnitureAdder`

### 3️⃣ Lancer le jeu
- Clique sur **Play** (F5)
- Tu devrais voir la maison se construire
- Regarde la console de sortie (View > Output) pour les messages de confirmation

### 4️⃣ Interagir avec la maison
- **Clique sur les portes** pour les ouvrir/fermer
- **Explore les pièces** en te déplaçant
- Les **lumières** s'allument automatiquement

## ✅ Vérification

Dans la console, tu devrais voir:
```
[🏠] Construction de la maison...
[✅] Maison construite avec succès !
[🚪] Pièces créées: Salon, Chambre, Cuisine
[✅] Portes interactives configurées: 3 portes
[💡] 3 lumières ajoutées à la maison
[🛋️] Mobilier ajouté aux pièces
```

## 🎨 Personnalisation

### Modifier les couleurs
Dans `main_house_builder.lua`, cherche:
```lua
wall.BrickColor = BrickColor.new("Medium stone grey")
```

Remplace par d'autres couleurs:
- `"Dark stone grey"`
- `"Bright blue"`
- `"Dark red"`
- `"Bright green"`

### Modifier la taille
Au début de `main_house_builder.lua`:
```lua
local ROOM_WIDTH = 8      -- Largeur des pièces
local ROOM_DEPTH = 6      -- Profondeur des pièces
local WALL_HEIGHT = 4     -- Hauteur des murs
```

## 🐛 Dépannage

**Problème:** "Maison non trouvée"
- Assure-toi que `HouseBuilder` s'est exécuté d'abord
- Attends quelques secondes entre les scripts

**Problème:** Les portes ne s'ouvrent pas
- Clique directement sur la porte (pas le mur)
- Les portes doivent avoir un ClickDetector

**Problème:** Pas de lumières
- Vérifie que le script `LightHandler` s'exécute après `HouseBuilder`
- Check l'Output pour les erreurs
