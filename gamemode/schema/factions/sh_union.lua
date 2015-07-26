-- The 'nice' name of the faction.
FACTION.name = "U.N.I.O.N."
-- A description used in tooltips in various menus.
FACTION.desc = "The definition of a conglomerate"
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

-- FACTION.index is defined when the faction is registered and is just a numeric ID.
-- Here, we create a global variable for easier reference to the ID.
FACTION_UNION = FACTION.index
