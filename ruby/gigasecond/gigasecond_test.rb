require 'minitest/autorun'     # => true
require 'date'                 # => true
require 'time'                 # => true
require_relative 'gigasecond'  # => true

class GigasecondTest < MiniTest::Unit::TestCase

  def test_1
    gs = Gigasecond.from(Date.new(2011, 4, 25))  # => #<Date: 2043-01-01 ((2467251j,0s,0n),+0s,2299161j)>
    assert_equal Date.new(2043, 1, 1), gs        # => true
  end

  def test_2
    gs = Gigasecond.from(Date.new(1977, 6, 13))  # => #<Date: 2009-02-19 ((2454882j,0s,0n),+0s,2299161j)>
    assert_equal Date.new(2009, 2, 19), gs       # => true
  end

  def test_3
    gs = Gigasecond.from(Date.new(1959, 7, 19))  # => #<Date: 1991-03-27 ((2448343j,0s,0n),+0s,2299161j)>
    assert_equal Date.new(1991, 3, 27), gs       # => true
  end

  def test_yourself
    your_birthday = Date.new(1987, 9, 24)  # => #<Date: 1987-09-24 ((2447063j,0s,0n),+0s,2299161j)>
    gs = Gigasecond.from(your_birthday)    # => #<Date: 2019-06-02 ((2458637j,0s,0n),+0s,2299161j)>
    assert_equal Date.new(2019, 6, 2), gs  # => true
  end

end

# >> Run options: --seed 49349
# >>
# >> # Running:
# >>
# >> ....
# >>
# >> Finished in 0.003323s, 1203.7316 runs/s, 1203.7316 assertions/s.
# >>
# >> 4 runs, 4 assertions, 0 failures, 0 errors, 0 skips
