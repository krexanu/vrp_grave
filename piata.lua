local lang = vRP.lang

local tdCords2 = {2710.2963867188,4317.0874023438,46.088787078858}

local menu_confisca2 = {
	name = "Market",
	css={top = "75px", header_color="rgba(226, 87, 36, 0.75)"}
}

menu_confisca2["Sell handkerchief"] = {function(player, choice)
	local user_id = vRP.getUserId(player)
	if(user_id ~= nil and user_id ~= "")then
		vRP.prompt(player,lang.inventory.trash.promptv2({vRP.getInventoryItemAmount(user_id,"batista")}),"",function(player,Lapte)
			if(Lapte ~= "" and Lapte ~= nil)then
				if(tonumber(Lapte))then
					Lapte = tonumber(Lapte)
					if(Lapte > 0) and (Lapte <= 999)then
						if vRP.tryGetInventoryItem(user_id,"batista",Lapte,false) then
							local PretLapte = math.floor(Lapte * 7)
							vRP.giveInventoryItem(user_id, "dirty_money",PretLapte)
							vRPclient.notify(player, {"[Illegal] You sold "..Lapte.." for "..PretLapte.." dirty money"})
							vRP.closeMenu(player)
						else
							vRPclient.notify(player, {"[Illegal] You don't have enough handkerchiefs !"})
						end
					else
						vRPclient.notify(player, {"[Illegal] Insert a number beteween 1-99!"})
					end
				else
					vRPclient.notify(player, {"[Illegal] Insert a number !"})
				end
			else
				vRPclient.notify(player, {"[Illegal] Insert a number !"})
			end
		end)
	end
end, "<font color='white'> 1 handkerchief = <font color='green'> 7 EURO "}

menu_confisca2["Sell watch"] = {function(player, choice)
	local user_id = vRP.getUserId(player)
	if(user_id ~= nil and user_id ~= "")then
		vRP.prompt(player,lang.inventory.trash.promptv2({vRP.getInventoryItemAmount(user_id,"ceas")}),"",function(player,Lapte)
			if(Lapte ~= "" and Lapte ~= nil)then
				if(tonumber(Lapte))then
					Lapte = tonumber(Lapte)
					if(Lapte > 0) and (Lapte <= 999)then
						if vRP.tryGetInventoryItem(user_id,"ceas",Lapte,false) then
							local PretLapte = math.floor(Lapte * 50)
							vRP.giveInventoryItem(user_id, "dirty_money",PretLapte)
							vRPclient.notify(player, {"[Illegal] You sold "..Lapte.." for "..PretLapte.." dirty money"})
							vRP.closeMenu(player)
						else
							vRPclient.notify(player, {"[Illegal] You don't haev enough watches !"})
						end
					else
						vRPclient.notify(player, {"[Illegal] Insert a number beteween 1-99!"})
					end
				else
					vRPclient.notify(player, {"[Illegal] Insert a number !"})
				end
			else
				vRPclient.notify(player, {"[Illegal] Insert a number !"})
			end
		end)
	end
end, "<font color='white'> 1 Watch = <font color='green'> 50 EURO "}

menu_confisca2["Sell bracelet"] = {function(player, choice)
	local user_id = vRP.getUserId(player)
	if(user_id ~= nil and user_id ~= "")then
		vRP.prompt(player,lang.inventory.trash.promptv2({vRP.getInventoryItemAmount(user_id,"bratara")}),"",function(player,Lapte)
			if(Lapte ~= "" and Lapte ~= nil)then
				if(tonumber(Lapte))then
					Lapte = tonumber(Lapte)
					if(Lapte > 0) and (Lapte <= 999)then
						if vRP.tryGetInventoryItem(user_id,"bratara",Lapte,false) then
							local PretLapte = math.floor(Lapte * 35)
							vRP.giveInventoryItem(user_id, "dirty_money",PretLapte)
							vRPclient.notify(player, {"[Illegal] You sold "..Lapte.." for "..PretLapte.." dirty money"})
							vRP.closeMenu(player)
						else
							vRPclient.notify(player, {"[Illegal] You don't have enough bracelets !"})
						end
					else
						vRPclient.notify(player, {"[Illegal] Insert a number beteween 1-99!"})
					end
				else
					vRPclient.notify(player, {"[Illegal] Insert a number !"})
				end
			else
				vRPclient.notify(player, {"[Illegal] Insert a number !"})
			end
		end)
	end
end, "<font color='white'> 1 Bracelet = <font color='green'> 35 EURO "}

menu_confisca2["Sell earrings"] = {function(player, choice)
	local user_id = vRP.getUserId(player)
	if(user_id ~= nil and user_id ~= "")then
		vRP.prompt(player,lang.inventory.trash.promptv2({vRP.getInventoryItemAmount(user_id,"cercei")}),"",function(player,Lapte)
			if(Lapte ~= "" and Lapte ~= nil)then
				if(tonumber(Lapte))then
					Lapte = tonumber(Lapte)
					if(Lapte > 0) and (Lapte <= 999)then
						if vRP.tryGetInventoryItem(user_id,"cercei",Lapte,false) then
							local PretLapte = math.floor(Lapte * 40)
							vRP.giveInventoryItem(user_id, "dirty_money",PretLapte)
							vRPclient.notify(player, {"[Illegal] You sold "..Lapte.." for "..PretLapte.." dirty money"})
							vRP.closeMenu(player)
						else
							vRPclient.notify(player, {"[Illegal] You don't have enough earrings !"})
						end
					else
						vRPclient.notify(player, {"[Illegal] Insert a number beteween 1-99!"})
					end
				else
					vRPclient.notify(player, {"[Illegal] Insert a number !"})
				end
			else
				vRPclient.notify(player, {"[Illegal] Insert a number !"})
			end
		end)
	end
end, "<font color='white'> 1 Pair of earrings = <font color='green'> 40 EURO "}

menu_confisca2["Sell necklace"] = {function(player, choice)
	local user_id = vRP.getUserId(player)
	if(user_id ~= nil and user_id ~= "")then
		vRP.prompt(player,lang.inventory.trash.promptv2({vRP.getInventoryItemAmount(user_id,"colier")}),"",function(player,Lapte)
			if(Lapte ~= "" and Lapte ~= nil)then
				if(tonumber(Lapte))then
					Lapte = tonumber(Lapte)
					if(Lapte > 0) and (Lapte <= 999)then
						if vRP.tryGetInventoryItem(user_id,"colier",Lapte,false) then
							local PretLapte = math.floor(Lapte * 45)
							vRP.giveInventoryItem(user_id, "dirty_money",PretLapte)
							vRPclient.notify(player, {"[Illegal] You sold "..Lapte.." for "..PretLapte.." dirty money"})
							vRP.closeMenu(player)
						else
							vRPclient.notify(player, {"[Illegal] You don't have enough necklaces !"})
						end
					else
						vRPclient.notify(player, {"[Illegal] Insert a number beteween 1-99!"})
					end
				else
					vRPclient.notify(player, {"[Illegal] Insert a number !"})
				end
			else
				vRPclient.notify(player, {"[Illegal] Insert a number !"})
			end
		end)
	end
end, "<font color='white'> 1 Necklace = <font color='green'> 45 EURO "}

local function build_confisca2(source)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then

		local x, y, z = table.unpack(tdCords2)

		local conf_enter = function(player, area)
			local user_id = vRP.getUserId(player)
			if user_id ~= nil then
				if menu_confisca2 then vRP.openMenu(player, menu_confisca2) end

			end
		end

		local conf_leave = function(player, area)
			vRP.closeMenu(player)
		end

		vRPclient.addMarker(source,{x,y,z-0.95,1,1,0.9,0, 66, 134, 244,150})
		vRP.setArea(source, "vRP:casdfasdfsdafsad", x, y, z, 3, 2, conf_enter, conf_leave) 
		vRPclient.addBlip(source,{"2710.2963867188,4317.0874023438,46.088787078858",310,36,"Graves"})
		--vRP.setPickup(source,"vRP:gioni:obj2456245","prop_tool_shovel006",2710.2963867188,4317.0874023438,46.088787078858,2.3,1.5)
		--vRP.setPickup(source,"vRP:gioni:obj3","prop_tool_shovel006",-279.3948059082,2842.8881835938,54.034488677978,2.3,1.5)
		--vRP.setPickup(source,"vRP:gioni:obj4","prop_tool_shovel006",-276.43814086914,2841.9343261718,53.898742675782,2.3,1.5)
		--vRP.setPickup(source,"vRP:gioni:obj5","prop_tool_shovel006",-293.94219970704,2840.5249023438,55.448642730712,2.3,1.5)
		--vRP.setPickup(source,"vRP:gioni:obj6","prop_tool_shovel006",-292.01400756836,2839.4133300782,55.318466186524,2.3,1.5)
		--vRP.setPickup(source,"vRP:gioni:obj7","prop_tool_shovel006",-289.95877075196,2838.2680664062,55.268375396728,2.3,1.5)
	end
end

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
  if first_spawn then
	build_confisca2(source)
  end
end)

RegisterCommand("buildconfisca", function(ply)
    build_confisca(ply)
end)