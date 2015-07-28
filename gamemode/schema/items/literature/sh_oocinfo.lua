ITEM.name = "OOC Server Info"
ITEM.desc = "Stuff you might want or need to know."
ITEM.contents = "null"
ITEM.category = "Literature"
ITEM.model = "models/props_lab/bindergraylabel01b.mdl"
ITEM.price = 0

ITEM.functions.Read = {
	icon = "icon16/book_open.png",
	run = function(item)
		if (CLIENT) then
			if (IsValid(nut.gui.book)) then
				nut.gui.book:Remove()
			end

			if (IsValid(nut.gui.menu)) then
				nut.gui.menu.close:DoClick()
			end

			local frame = vgui.Create("DFrame")
			frame:SetSize(ScrW() * 0.375, ScrH() * 0.8)
			frame:SetTitle(item.name)
			frame:Center()
			frame:MakePopup()

			frame.html = frame:Add("DHTML")
			frame.html:Dock(FILL)
			frame.html:SetHTML([[
                <body style="background-color: #fefefe;">
				]].."http://steamcommunity.com/workshop/filedetails/?id=354345804"..[[
				</body>
			]])
		end

		return false
	end
}