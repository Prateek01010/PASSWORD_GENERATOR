local low = "abcdefghijklmnopqrstuvwxyz"
local up = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
local spec_char = "!@#$%^&*()_-+=<>?"
local num = "0123456789"

local all_char = (low .. up .. spec_char .. num)

function passwd(len)
    math.randomseed(os.time()) -- RANDOMSEED HELPS TO GIVE NEW VALUE EVERYTIME WE RUN IT BY SETTING SOME FACTOR LIKE HERE IT IS OS.TIME() AS TIME CHANGES EVERYSECONDS
    local password = ""

    for i = 1, len, 1 do
        local randomness = math.random(1, #all_char)
        password = password .. string.sub(all_char, randomness, randomness)
    end

    return password
end

io.write("ENTER THE LENGTH OF PASSWORD YOU WANT: ")
local a = io.read()
local b = tonumber(a)
local pass = passwd(b)
print("Generated Password: " .. pass)
