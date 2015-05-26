class Palindromes
	attr_reader :max_factor
	attr_reader :largest
	def initialize(max_factor: max_factor, min_factor: min_factor)
		@max_factor = max_factor
		@min_factor = min_factor
		@largest = nil
	end
	
	def generate
		@largest = Largest.new(max_factor: @max_factor, min_factor: @min_factor)
	end
end

class Largest
	attr_reader :value, :min_factor, :max_factor
	
	def initialize(max_factor, min_factor)
		@max_factor = max_factor
		@min_factor = min_factor
	end
	def factors 
		 sort_factors
	end

	def calc_factors
		factors = (min_factor..max_factor).select { |n| max_factor % n == 0}		
		out = []
		factors.each do |f1|
			factors.each do |f2|
				if f1 * f2 == value
					out << [f1, f2] 
				end
			end
		end
		out
	end

	def sort_factors
		calc_factors.map do |factors|
			factors.sort
		end.uniq
	end
end
