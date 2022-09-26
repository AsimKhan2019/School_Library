require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(id, name = 'Unknown', parents_permission : true, age, classroom)
    super(id, name, age, parents_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
