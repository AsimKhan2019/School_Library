require_relative './classes/app'

class Main
  def initialize
    @app = App.new
    @select = 0
  end

  def menu
    puts 'Welcome to the School Library'

    while @select != 7
      puts 'Please choose an option'
      puts '1 - List all Books'
      puts '2 - List all Persons'
      puts '3 - Create a person (Student / Teacher)'
      puts '4 - Create a Book'
      puts '5 - Create a Rental'
      puts '6 - List all Rentals'
      puts '7 - Exit Program'
      console_start
    end
  end

  def console_start
    @select = gets.chomp.to_i

    case @select
    when 1
      @app.listallbooks
    when 2
      @app.listallpeople
    when 3
      @app.addperson
    when 4
      @app.addbook
    when 5
      @app.addrental
    when 6
      @app.listallrentals
    end
  end
end

main = Main.new
main.menu
