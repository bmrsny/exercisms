class Allergies
  attr_reader :allergy_num

  def initialize(allergy_num)
    @allergy_num = allergy_num
  end

  def allergy_list
    {
      128 => "cats",
      64  => "pollen",
      32  => "chocolate",
      16  => "tomatoes",
      8   => "strawberries",
      4   => "shellfish",
      2   => "peanuts",
      1   => "eggs"
    }
  end

  def allergic_to?(allergy, list=[])
    allergy_list.keys do |key|
      until allergy_num - key < 0
        list << allergy_list[key]
      end
    end
    list.include?(allergy)
  end
end
