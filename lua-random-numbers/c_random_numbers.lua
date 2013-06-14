require 'random_numbers'

print(table.concat(Randomizer.new(arg[1], arg[2]):randomize(), ','))

-- $ lua c_random_numbers.lua 0 10
-- 5,2,10,1,9,6,3,0,4,8,7
