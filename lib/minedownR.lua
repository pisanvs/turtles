rednet.open('left')
local id, message = rednet.receive()

local i = 0
while i < tonumber(message) do
    turtle.digDown()
    turtle.down()
    i = i+1
end

shell.run('../startupR')