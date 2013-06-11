Palindrome = {}

function Palindrome:check(list)
  local list = list or {}

  if #list < 2 then
    return false
  else
    local response = true
    for i=1, math.floor(#list/2) do
      if list[i] ~= list[#list-i + 1] then
        response = false
        break
      end
    end
    return response
  end
end
