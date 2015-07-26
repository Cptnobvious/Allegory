-- The 'nice' name of the faction.
FACTION.name = "Natives"
-- A description used in tooltips in various menus.
FACTION.desc = "Those who are indigenous to the area."
-- A color to distinguish factions from others, used for stuff such as
-- name color in OOC chat.
FACTION.color = Color(70, 70, 220)
-- Set the male model choices for character creation.
FACTION.maleModels = {
	"models/police.mdl"
}
-- Set the female models to be the same as male models.
FACTION.femaleModels = FACTION.maleModels
-- Set it so the faction requires a whitelist.
FACTION.isDefault = false

-- Return what the name will be set for character creation.
function FACTION:GetDefaultName()
    newName = ""
    randNum = math.random(1, 10)

    if (randNum == 1) then
        newName = "Runs With"
    elseif randNum == 2 then
        newName = "Sleeps With"
    elseif randNum == 3 then
        newName = "Fights Like"
    elseif randNum == 4 then
        newName = "Sings Like"
    elseif randNum == 5 then
        newName = "Clever Like"
    elseif randNum == 6 then
        newName = "Ghost Of"
    elseif randNum == 7 then
        newName = "Sitting"
    elseif randNum == 8 then
        newName = "Crazy"
    elseif randNum == 9 then
        newName = "Brave"
    else 
        newName = "Little"
    end
    
    randNum = math.random(1, 8)
    newName = newName .. " "
    
    if randNum == 1 then
        newName = newName .. "Eagle"
    elseif randNum == 2 then
        newName = newName .. "Bear"
    elseif randNum == 3 then
        newName = newName .. "Rabbit"
    elseif randNum == 4 then
        newName = newName .. "Buffalo"
    elseif randNum == 5 then
        newName = newName .. "Wolf"
    elseif randNum == 6 then
        newName = newName .. "White Man"
    elseif randNum == 7 then
        newName = newName .. "White Woman"
    else
        newName = newName .. "Trout"
    end
    
	return newName
end

-- FACTION.index is defined when the faction is registered and is just a numeric ID.
-- Here, we create a global variable for easier reference to the ID.
FACTION_NATIVE = FACTION.index
