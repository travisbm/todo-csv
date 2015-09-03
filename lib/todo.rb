require 'csv'  # => true

class Todo

  def initialize(file_name)
    @file_name = file_name
    @todos = CSV.read(@file_name, {headers: true})

    # You will need to read from your CSV here and assign them to the @todos variable. make sure headers are set to true
  end

  def start
    loop do
      system('clear')

      puts "---- TODO.rb ----"

      view_todos

      puts
      puts "What would you like to do?"
      puts "1) Exit 2) Add Todo 3) Mark Todo As Complete 4) Change todo name 5) Delete"
      print " > "
      action = gets.chomp.to_i
      case action
      when 1 then exit
      when 2 then add_todo
      when 3 then mark_todo
      when 4 then change_todo_name
      when 5 then delete_todo
      else
        puts "\a"
        puts "Not a valid choice"
      end
    end
  end

  def todos
    @todos
  end

  def add_todo
    puts "Name of Todo > "
    @todos << [get_input, "no"]
  end

  def mark_todo
    puts "Which todo have you finished?"
    num = get_input.to_i
    @todos[num - 1]["completed"] = "yes"
  end

  def change_todo_name
    puts "Which todo name would you like to change?"
    num = get_input.to_i
    puts "What would you like to change the name too?"
    name = get_input
    @todos[num - 1]["name"] = name
  end

  def delete_todo
    puts "Which todo would you like to delete?"
    num = get_input.to_i
    @todos.delete(num - 1)
  end

  def view_todos
    puts "Unfinished"
    @todos.each_with_index do |todo, index|
      if todo["completed"] == "no"
      puts "#{index + 1}) #{todo["name"]}"
      end
    end
    puts "Completed"
    @todos.each_with_index do |todo, index|
      if todo["completed"] == "yes"
      puts "#{index + 1}) #{todo["name"]}"
      end
    end
  end

  private        # => Todo
  def get_input
    gets.chomp
  end

  def save!
    File.write(@file_name, @todos.to_csv)
  end
end
