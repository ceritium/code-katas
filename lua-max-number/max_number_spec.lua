require 'max_number'

context("MaxNumber", function()

  test("Should return 1", function()
    assert_equal(MaxNumber:max({1}), 1)
  end)

  test("Should return nil", function()
    assert_equal(MaxNumber:max({}), nil)
  end)

  test("Should return 2", function()
    assert_equal(MaxNumber:max({2, 1}), 2)
  end)

  test("Should return 3", function()
    assert_equal(MaxNumber:max({1, 3}), 3)
  end)

  context("Negative Numbers", function()
    test("Should return 0", function()
      assert_equal(MaxNumber:max({0, -3}), 0)
    end)

    test("Should return -3", function()
      assert_equal(MaxNumber:max({-10, -3, -20}), -3)
    end)

  end)



end)

-- tsc -f max_number_test.lua
-- ------------------------------------------------------------------------
-- MaxNumber:
-- Should return 1                                                      [P]
-- Should return nil                                                    [P]
-- Should return 2                                                      [P]
-- Should return 3                                                      [P]
-- Negative Numbers:
--   Should return 0                                                    [P]
--   Should return -3                                                   [P]
-- ------------------------------------------------------------------------
-- 6 tests 6 passed 6 assertions 0 failed 0 errors 0 unassertive 0 pending