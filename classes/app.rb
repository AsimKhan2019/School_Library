require_relative 'book'
require_relative 'teacher'
require_relative 'student'
require_relative 'rental'

class App
  attr_accessor :books, :teachers, :students, :rentals

  def initialize
    @books = []
    @teachers = []
    @students = []
    @rentals = []
  end

  def list_all_books
    @books.each_with_index {|book, index| puts "[#{index}] Title: #{book.title}, Author: #{book.author}"}
  end

  def list_all_people
    people = [*@teachers, *@students]
    people.each_with_index do |person, index|
      puts "[#{index}] ID: #{person.id} Name: #{person.name}, Age: #{person.age}"
    end
  end

  def add_person
    puts "Do you want to add a Student[1] or a Teacher[2]?"
    option = gets.chomp.to_i

    case option
    when 1
      puts "Enter in your Age: "
      age = gets.chomp.to_i
      puts "Enter in your Name: "
      name = gets.chomp
      puts "Enter in your Classroom: "
      classroom = gets.chomp
      puts "Do you have parent's permission [Y/N]"
      permission = gets.chomp.downcase
      student = Student.new(age, classroom)
      student.name = name
      @students << student
      puts "#{student.name} added successfully!!"
    
    when 2
      puts "Enter in your Age: "
      age = gets.chomp.to_i
      puts "Enter in your Name: "
      name = gets.chomp
      puts "Enter in your Specialization: "
      specialization = gets.chomp
      teacher = Teacher.new(age, name, specialization)
      @teachers << teacher
      puts "#{teacher.name} added successfully!!"
    end

    def add_book
      puts "Enter in the Book title: "
      title = gets.chomp
      puts "Enter in the Author name: "
      author = gets.chomp
      book = Book.new(author, title)
      @books << book
      puts "#{book.title} added successfully!!"
    end

    def add_rental
      puts "Select Book from the list: "
      list_all_books
      book_id = gets.chomp.to_i
      puts "Select Person from the list: "
      list_all_people
      person_id = gets.chomp.to_i
      puts "Select rental date: "
      rentaldate = gets.chomp
      people = [*@teachers, *@students]
      rental = Rental.new(rentaldate, @books[book_id], people[person_id])
      @rentals << rental
      puts "Book rental added successfully!!"
    end

    def list_all_rentals
      puts "Enter in the Person ID: "
      id = gets.chomp.to_i
      puts id
      # person = people.select { |p| p.id == id}[0]
      # if person
      #   @rentals.each { |rental| puts "Date: #{rental.date}, Title: #{rental.book.title}, Author: #{rental.book.author}"}
      # else
      #   puts "Try again!!!"
      # end
      @rentals.each do |i|
        puts i.person.id
        puts "Date: #{i.date}, Title: #{i.book.title}, Author: #{i.book.author}" if id == i.person.id
      end
    end
  end
end
