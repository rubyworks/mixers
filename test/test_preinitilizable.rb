require 'mixers/preinitilizable'
require 'test/unit'

class TC_Preinitalizable < Test::Unit::TestCase

  module M
    include Preinitializable
    def preinitialize
      @a = 10
    end
  end

  class X
    include M
    def a; @a ; end
  end

  class Y < X
    def initialize
      super
    end
  end

  def test_x
    x = X.new
    assert_equal(10, x.a)
  end

  def test_y
    y = Y.new
    assert_equal(10, y.a)
  end

end

