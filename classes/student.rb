require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(id, name = 'Unknown', age, parents_permission: true, classroom)
    super(id, name, age, parents_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
