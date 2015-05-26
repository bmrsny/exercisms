class Hamming
  def self.compute(strand_x,strand_y)
    min_length = [strand_x.size, strand_y.size].min
    (0...min_length).count { |strand| strand_x[strand] != strand_y[strand] }
  end
end






  # def self.compute(strand_one, strand_two)
  #   strand_one.chars.zip(strand_two.chars).count { |char| char[0] != char[1] && char[1
  #     ] != nil}  # => 7
  # end

#   def self.compute(x,y)
#     if x.length < y.length
#       length = x.length
#     else
#       length = y.length
#     end
#     count = 0
#     (0..length-1).each do |i|
#       if x[i] != y[i]
#         puts count += 1
#       end
#     end
#     count
#   end
# end

# Hamming.compute('AG','AT')


  # def self.compute(x, y)
  #
  #   x.chars.zip(y.chars).count { |e| e[0] != e[1] && e[1] != nil }
  #
  # end
  #really cool code !!!!!!!!!!
