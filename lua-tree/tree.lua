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


$ tsc -f tree_spec.lua
------------------------------------------------------------------------
Tree:
A Tree with height of 1:
  height should be 1                                                 [P]
  should draw '#'                                                    [P]
  should draw the tree '#'                                           [P]
A Tree with height of 2:
  height should be 2                                                 [P]
  should draw '_#'                                                   [P]
  should draw '###'                                                  [P]
  should draw the tree '_#
###
'                                     [P]
A Tree with height of 3:
  height should be 3                                                 [P]
  should draw '__#'                                                  [P]
  should draw '_###'                                                 [P]
  should draw '#####'                                                [P]
------------------------------------------------------------------------
11 tests 11 passed 11 assertions 0 failed 0 errors 0 unassertive 0 pending