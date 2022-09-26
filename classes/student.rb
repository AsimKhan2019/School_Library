class Student < Person
  def initialize(id, age, name = 'Unknown', parents_permission: true, classroom)
    super(id, name, age, parents_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
