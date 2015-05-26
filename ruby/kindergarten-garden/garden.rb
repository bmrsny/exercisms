class Garden
  attr_accessor :students
  PLANTS = { "R"    => :radishes,
             "C"    => :clover,
             "G"    => :grass,
            "V"     =>  :violets
           }
  def initialize(diagram, students)
    @diagram = diagram
    @students =
    {"alice" => [],
      "bob" => [],
      "charlie" => [],
      "david" => [],
      "eve" => [],
      "fred" => [],
      "ginny" => [],
      "harriet" => [],
      "ileana" => [],
      "joseph" => [],
      "kincaid" => [],
      "larry" => []}
    populate_students(students) if students
    build_garden
  end

  def populate_students(students)
  end

  def build_garden
    array_of_chars = @diagram.split("\n").map {|s| s.chars}
    array_1 = array_of_chars[0].flatten
    array_2 = array_of_chars[1].flatten
    @row1 = find_plants(array_1)
    @row2 = find_plants(array_2)
    @students.each do |student, garden|
      garden << @row1.shift(2)
      garden << @row2.shift(2)
    end
  end

  def find_plants(array)
    flowers = []
    array.each do |element|
      flowers << PLANTS[element]
    end
    return flowers
  end

  def method_missing(m, *args, &block)
    @students[m.to_s].flatten
  end
