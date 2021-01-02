print('How many blocks?')
input = read()

local i = 0
while i < tonumber(input) do
    turtle.digDown()
    turtle.down()
    i = i+1
end

shell.run('../startup')