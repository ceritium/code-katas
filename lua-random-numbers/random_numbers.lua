RandomNumber = {}

function RandomNumber:numbers(first, last)
  generate_table(first, last)
  return randomize()
end

function generate_table(first, last)
  arr = {}
  for i=first, last do
    table.insert(arr, i)
  end

  return arr
end

function randomize()
  random_arr = {}
  while #arr > 0 do
    position = math.random(#arr)

    table.insert(random_arr, arr[position])
    table.remove(arr, position)
  end

  return random_arr
end