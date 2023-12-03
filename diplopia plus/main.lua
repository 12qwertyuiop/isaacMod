local mod = RegisterMod("diplopia plus",1)


local double_eyes = Isaac.GetItemIdByName("double eyes")
function mod:double_eyes_use(item)
    --pickupnum = Isaac.CountEntities(nil,EntityType.ENTITY_PICKUP,-1,-1)
    --[[Isaac.DebugString(tostring(pickupnum))]]--
    for _, entity in ipairs(Isaac.GetRoomEntities()) do
        if entity.Type==5  then
            Isaac.Spawn(entity.Type, entity.Variant, entity.SubType, Isaac.GetRandomPosition(), Vector(0,0), nil)

        end
    end
    
end
mod:AddCallback(ModCallbacks.MC_USE_ITEM,mod.double_eyes_use,double_eyes)