require 'random_numbers'

context("RandomNumber", function()
  test("Should return a table with 1, 2", function()
    assert_equal(table.concat(RandomNumber:numbers(1,2), ', '), table.concat({1,2}, ', ') )
  end)

  test("Should return a table with 1", function()
    assert_equal(table.concat(RandomNumber:numbers(1,1), ', '), table.concat({1}, ', ') )
  end)

  test("Should return a empty table", function()
    assert_equal(table.concat(RandomNumber:numbers(2,1), ', '), table.concat({}, ', ') )
  end)

  test("Should return a ramdom table", function()
    assert_not_equal(table.concat(RandomNumber:numbers(0, 99), ', '), table.concat(RandomNumber:numbers(0, 99), ', ') )
  end)

end)