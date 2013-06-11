require 'palindrome'

context("Palindrome", function()

  test("Should be false for lists with less than 2 items", function()
    assert_equal(Palindrome:check({1}), false)
    assert_equal(Palindrome:check({}), false)
    assert_equal(Palindrome:check(), false)
  end)

  test("Should be true for {1,1}", function()
    assert_equal(Palindrome:check({1,1}), true)
  end)

  test("Should be true for {1,2,1}", function()
    assert_equal(Palindrome:check({1,2,1}), true)
  end)

  test("Should be false for {1,2,1,4}", function()
    assert_equal(Palindrome:check({1,2,1,4}), false)
  end)

  test("Should be false for {1,2,2,1}", function()
    assert_equal(Palindrome:check({1,2,2,1}), true)
  end)

  test("Should work with strings", function()
    assert_equal(Palindrome:check({"a","b","c","b","a"}), true)
    assert_equal(Palindrome:check({"p","e","r","o"}), false)
  end)

  test("Should work with booleans", function()
    assert_equal(Palindrome:check({true, false, true, false, true}), true)
    assert_equal(Palindrome:check({true, true, false}), false)
  end)

end)
