MaxNumber = {}

function MaxNumber:max(arr)

  local max = arr[1]
  for i=1, #arr do
    if(max < arr[i]) then
      max = arr[i]
    end
  end

  return max
end
