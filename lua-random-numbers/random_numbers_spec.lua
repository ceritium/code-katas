require 'random_numbers'

context("Randomizer", function()

  test("Should generate differents seeds", function()
    rn = Randomizer.new()
    rn:new_seed()
    seed1 = rn.seed

    rn:new_seed()
    seed2 = rn.seed

    assert_not_equal(seed1, seed2)
  end)

  test("Should initialize first and last numbers", function()
    rn = Randomizer.new()
    assert_equal(rn.first, 0)
    assert_equal(rn.last, 99)
  end)

  test("Should return a table with 2 elements", function()
    rn = Randomizer.new(4,5)
    assert_equal(#rn:randomize(), 2)
  end)

  test("Should return a table with 1", function()
    rn = Randomizer.new(7,7)
    assert_equal(table.concat(rn:randomize(), ', '), table.concat({7}, ', ') )
  end)

  test("Should return a empty table", function()
    rn = Randomizer.new(2,1)
    assert_equal(table.concat(rn:randomize(), ', '), table.concat({}, ', ') )
  end)

  test("Should return a table with 100 elements", function()
    rn = Randomizer.new(1,100)
    assert_equal(#rn:randomize(), 100)
  end)

end)