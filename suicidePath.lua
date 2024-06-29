local args = {...}
 
-- -1 means infinite, everything else is amount of forward steps
local maxLength = -1
 
local function hasBuildingBlock()
    for i = 1, 16 do
        local hasItem = turtle.getItemDetail(i)
        if hasItem then
            turtle.select(i)
            return true
        end
    end
    
    return false
end
 
local function main ()
    turtle.refuel()
    
    while maxLength == -1 or maxLength > 0 do
        if hasBuildingBlock() then
            turtle.placeDown()
        else return end
        
        while not turtle.forward() do
            turtle.dig()
        end
        while turtle.detectUp() do
            turtle.digUp()
        end
        maxLength = maxLength == -1 and -1 or maxLength - 1
    end
end

local tmp = tonumber(args[1]) or nil
if tmp then maxLength = tmp end
main()