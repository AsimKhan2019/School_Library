require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(id, age, classroom, name = 'Unknown', parents_permission: true)
    @classroom = classroom
    super(id, age, name, parents_permission)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
