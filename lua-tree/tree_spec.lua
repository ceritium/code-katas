require 'tree'

context("Tree", function()

  context("A Tree with height of 1", function()
    before(function()
      tree = Tree.new(1)
    end)

    test("height should be 1", function()
      assert_equal(tree.height, 1 )
    end)

    test("should draw '#'", function()
      assert_equal(tree:new_line(1), '#' )
    end)

    test("should draw the tree '#'", function()
      assert_equal(tree:draw(1), "#\n" )
    end)


  end)

  context("A Tree with height of 2", function()
    before(function()
      tree = Tree.new(2)
    end)

    test("height should be 2", function()
      assert_equal(tree.height, 2 )
    end)

    test("should draw '_#'", function()
      assert_equal(tree:new_line(1), '_#' )
    end)

    test("should draw '###'", function()
      assert_equal(tree:new_line(2), '###' )
    end)

    test("should draw the tree '_#\n###\n'", function()
      assert_equal(tree:draw(2), "_#\n###\n" )
    end)


  end)


  context("A Tree with height of 3", function()
    before(function()
      tree = Tree.new(3)
    end)

    test("height should be 3", function()
      assert_equal(tree.height, 3 )
    end)

    test("should draw '__#'", function()
      assert_equal(tree:new_line(1), '__#' )
    end)

    test("should draw '_###'", function()
      assert_equal(tree:new_line(2), '_###' )
    end)

    test("should draw '#####'", function()
      assert_equal(tree:new_line(3), '#####' )
    end)

  end)


end)
