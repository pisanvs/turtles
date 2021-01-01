function Minedown ()
    shell.run('./lib/minedown')
end
local functionTable = {Minedown}

while turtle.getFuelLevel() < 2000 do
    print('waiting for refuel, ',turtle.getFuelLevel(), ' out of 100')
    turtle.refuel(1)
end

print('am done')
print('enter command')

local input = read()
if functionTable[input] then
    functionTable[input]()
else
    print("I don't know how to "..input.."!")
end