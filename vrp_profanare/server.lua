local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_profanare")
vRPCprofanare = Tunnel.getInterface("vRP_profanare","vRP_profanare")

vRPprofanare = {}
Tunnel.bindInterface("vRP_profanare",vRPprofanare)
Proxy.addInterface("vRP_profanare",vRPprofanare)

function vRPprofanare.bijuterii(player)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
    vRPclient.playAnim(player,{false, {task="WORLD_HUMAN_GARDENER_PLANT"}, false})
    Wait(60000)
    vRPclient.stopAnim(player,{true})
    vRPclient.stopAnim(player,{false})
    local sansa = math.random(1,13)
    if sansa == 1 then
        vRPclient.notify(player,{"~r~Poor man, nothing here"})
    elseif sansa == 2 then 
        vRP.giveInventoryItem({user_id, "ceas",1})
    elseif sansa == 3 then 
        vRP.giveInventoryItem({user_id, "cercei",1})
        vRP.giveInventoryItem({user_id, "batista",1})
    elseif sansa == 4 then 
        vRP.giveInventoryItem({user_id, "colier",1})
    elseif sansa == 5 then 
        vRP.giveInventoryItem({user_id, "bratara",1})
    elseif sansa == 6 then 
        vRP.giveInventoryItem({user_id, "bratara",1})
        vRP.giveInventoryItem({user_id, "batista",1})
        vRP.giveInventoryItem({user_id, "colier",1})
    elseif sansa == 7 then 
        vRP.giveInventoryItem({user_id, "cercei",1})
        vRP.giveInventoryItem({user_id, "ceas",1})
        vRP.giveInventoryItem({user_id, "batista",1})
    elseif sansa == 8 then 
        vRP.giveInventoryItem({user_id, "bratara",1})
        vRP.giveInventoryItem({user_id, "ceas",1})
    elseif sansa == 9 then 
        vRP.giveInventoryItem({user_id, "colier",1})
        vRP.giveInventoryItem({user_id, "ceas",1})
    elseif sansa == 10 then 
        vRP.giveInventoryItem({user_id, "colier",1})
        vRP.giveInventoryItem({user_id, "batista",1})
        vRP.giveInventoryItem({user_id, "bratara",1})
    elseif sansa == 11 then 
        vRP.giveInventoryItem({user_id, "batista",1})
    elseif sansa == 12 then 
        vRP.giveInventoryItem({user_id, "batista",1})
    elseif sansa == 13 then 
        vRP.giveInventoryItem({user_id, "batista",1})
    end
end