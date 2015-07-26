ITEM.name = "Full Keg of Vincent Jugglebeer"
ITEM.desc = "The gods frown upon your decision"
ITEM.model = Model("models/props/de_inferno/wine_barrel.mdl")
ITEM.time = 120
ITEM.price = 100
ITEM.amount = 10
ITEM.weight = 0.25
ITEM.flag = "B"
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
        
        if (odds >= 25 or client:SteamID( ) == "STEAM_0:0:23735343") then
			client:UpdateInv("jugglekeg34", 1, nil, true)
		else
            client:Kill()
		end
        
		client:EmitSound("physics/flesh/flesh_impact_hard"..math.random(1, 5)..".wav")
	end
    
    --[[//Now accept the challenge
    run = function(itemTable, client, data)
		if (CLIENT) then return end

		
        

		if (odds >= 80) then
			client:UpdateInv("water_special", 1, nil, true)
		elseif (odds >= 60) then
			client:UpdateInv("water_sparkling", 1, nil, true)
		else
			client:UpdateInv("water", 1, nil, true)
		end

        
		
	end,
    --]]
}

--[[
ITEM.functions = {}
ITEM.functions.Open = {
	run = function(itemTable, client, data)
		if (CLIENT) then return end

		local odds = math.random(1, 100)

		if (odds >= 80) then
			client:UpdateInv("water_special", 1, nil, true)
		elseif (odds >= 60) then
			client:UpdateInv("water_sparkling", 1, nil, true)
		else
			client:UpdateInv("water", 1, nil, true)
		end

		client:UpdateInv("food_supplement_small", 1, nil, true)
		client:GiveMoney(math.random(10, 30))
		client:EmitSound("physics/flesh/flesh_impact_hard"..math.random(1, 5)..".wav")
	end,
	icon = "icon16/arrow_out.png"
}
]]--