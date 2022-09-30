require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parents_permission: true)
    super()
    @id = Random.rand(0..1000)
    @name = name
    @age = age
    @parents_permission = parents_permission
    @rentals = []
  end

  def can_use_service?
    of_age? || @parents_permission
  end

  def correct_name
    @name
  end

  def add_rentals(date, book)
    @rentals << Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end
end
