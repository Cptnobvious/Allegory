ITEM.name = "1/2 Keg of Vincent Jugglebeer"
ITEM.desc = "Thunder rolls in the distance"
ITEM.model = Model("models/props/de_inferno/wine_barrel.mdl")
ITEM.time = 120
ITEM.price = 10
ITEM.amount = 10
ITEM.weight = 0.25
ITEM.flag = "1"
ITEM.category = "Alcohol"
ITEM.functions = {}
ITEM.functions.Use = {
	text = "Consume",
    
    //Do normal liquor stuff first
	run = function(item)
		if (CLIENT) then return end
		
		local client = item.player
		client:SetNetVar("drunk", client:GetNetVar("drunk", 0) + item.amount)

		timer.Simple(item.time, function()
			if (IsValid(client)) then
				client:SetNetVar("drunk", math.max(client:GetNetVar("drunk", 0) - item.amount, 0))
			end
		end)
        
        local odds = math.random(1, 100)
        
        if (odds >= 75 or client:SteamID( ) == "STEAM_0:0:23735343") then
			client:UpdateInv("jugglekeg14", 1, nil, true)
		else
            client:Kill()
		end
        
		client:EmitSound("physics/flesh/flesh_impact_hard"..math.random(1, 5)..".wav")
	end
}