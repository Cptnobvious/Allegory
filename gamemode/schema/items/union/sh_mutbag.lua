ITEM.name = "Mutagen Kit"
ITEM.desc = "Prepackaged by UNION, these were ment for consumers."
ITEM.model = Model("models/weapons/w_package.mdl")
ITEM.category = "U.N.I.O.N."
ITEM.flag = "u"
ITEM.functions = {}
ITEM.functions.Open = {
	run = function(itemTable, client, data)
		if (CLIENT) then return end

		local odds = math.random(1, 100)

		if (odds >= 20) then
            --70% chance to get junk
			client:UpdateInv("union_toxicmut", 1, nil, true)
		elseif (odds >= 2) then
            --28% chance to get something worthwhile
            local newodds = math.random (1, 3)
            if (newodds == 1) then
                client:UpdateInv("union_hairmut", 1, nil, true)
            else
                client:UpdateInv("union_mutstabilizer", 1, nil, true)
            end
		else 
            --2% chance to get something good
			client:UpdateInv("union_cleanmut", 1, nil, true)
		end

		--client:UpdateInv("food_supplement_small", 1, nil, true)
		--client:GiveMoney(math.random(10, 30))
		client:EmitSound("physics/flesh/flesh_impact_hard"..math.random(1, 5)..".wav")
	end,
	icon = "icon16/arrow_out.png"
}