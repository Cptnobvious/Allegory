if (SERVER) then
    AddCSLuaFile("nut_colmusket.lua")
    SWEP.HoldType   = "ar2"
end

if (CLIENT) then
    SWEP.PrintName      = "Colonial Musket"
    SWEP.Author         = "Cptnobvious"
    SWEP.Slot           = 4
    SWEP.SlotPos        = 1
    SWEP.IconLetter     = "C"
    
    killicon.AddFont("weapon_ak47", "CSKillIcons", SWEP.IconLetter, Color(255, 80, 0, 255))
end

SWEP.Base               = "weapon_cs_base"
SWEP.Spawnable          = true
SWEP.AdminSpawnable     = true
SWEP.ViewModel          = "models/weapons/v_rif_ak47.mdl"
SWEP.WorldModel         = "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModelFlip	    = true

SWEP.Primary.Sound          = Sound("Weapon_AK47.Single")
SWEP.Primary.Recoil         = 1.5
SWEP.Primary.Damage         = 40
SWEP.Primary.NumShots       = 1
SWEP.Primary.Cone           = 0.02
SWEP.Primary.ClipSize       = 5
SWEP.Primary.Delay          = 2
SWEP.Primary.DefaultClip    = 10
SWEP.Primary.Automatic      = false
SWEP.Primary.Ammo           = "357"

SWEP.Secondary.ClipSize     = -1
SWEP.Secondary.DefaultClip  = -1
SWEP.Secondary.Automatic    = false
SWEP.Secondary.Ammo         = "none"

SWEP.IronSightsPos = Vector( 6.1, -7, 2.5 ) 
SWEP.IronSightsAng = Vector( 2.8, 0, 0 )

