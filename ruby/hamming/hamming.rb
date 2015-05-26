class Hamming
  def self.compute(strandx, strandy)
    min_length = [strandx.size, strandy.size].min
    require "pry" 
     binding.pry
    min_length.count { |strand| strandx[strand] != strandy[strand] }
  end
end
