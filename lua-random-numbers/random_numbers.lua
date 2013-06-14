Randomizer = {}
Randomizer.__index = Randomizer

function Randomizer.new(first, last)
  local random_number = {}
  setmetatable(random_number,Randomizer)
  random_number.seed = os.time()

  random_number.first = first or 0
  random_number.last = last or 99



  return random_number
end

function Randomizer:randomize()


  local list = self:generate_list()

  local random_list = {}
  while #list > 0 do
    self:new_seed()
    position = math.random(#list)

    table.insert(random_list, list[position])
    table.remove(list, position)
  end

  return random_list
end

function Randomizer:new_seed()
  self.seed = os.time() + self.seed
  math.randomseed(  tonumber(tostring(self.seed):reverse():sub(1,6)) )
end

function Randomizer:generate_list()
  local list = {}
  for i=self.first, self.last do
    table.insert(list, i)
  end

  return list
end
