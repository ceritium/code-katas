Tree = {}
Tree.__index = Tree

function Tree.new(height)
  local tree = {}
  setmetatable(tree,Tree)
  tree.height = height
  return tree
end

function Tree:draw()
    local string = ''
    for i=1, self.height do
      string = string .. self:new_line(i) .. "\n"
    end

    return string
end

function Tree:new_line(floor)
  size = (self.height - floor)
  white_space = string.rep('_', size) or ''
  return white_space .. string.rep('#', (floor * 2) - 1)
end


