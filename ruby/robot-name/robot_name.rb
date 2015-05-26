class Robot
  attr_accessor :name, :array
  def initialize
    @array = []
    reset
  end

  def reset
    self.array = []
    self.name = generate
  end

  def random_nums
    array << (1..9).to_a.shuffle[0..2].map(&:to_s).join
  end

  def random_letters
    array << ("A".."Z").to_a.shuffle[0..1].join
  end

  def generate
    random_letters
    random_nums
    array.join
  end
end
