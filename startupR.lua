local functionTable = {}

function functionTable.Minedown ()
    shell.run('./lib/minedown.lua')
end

while turtle.getFuelLevel() < 2000 do
    print('waiting for refuel, ',turtle.getFuelLevel(), ' out of 100')
    turtle.refuel(1)
end

rednet.open('left')

local id, message = rednet.receive()

if functionTable[message] then
    functionTable[message]()
else
    rednet.send(id,"I don't know how to "..input.."!\n")
end