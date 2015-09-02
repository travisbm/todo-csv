require_relative '../lib/todo'  # => true

Todo.new('lib/todos.csv').start  # ~> Errno::ENOENT: No such file or directory @ rb_sysopen - ../lib/todos.csv

# ~> Errno::ENOENT
# ~> No such file or directory @ rb_sysopen - ../lib/todos.csv
# ~>
# ~> /Users/Britton/.rvm/rubies/ruby-2.2.1/lib/ruby/2.2.0/csv.rb:1256:in `initialize'
# ~> /Users/Britton/.rvm/rubies/ruby-2.2.1/lib/ruby/2.2.0/csv.rb:1256:in `open'
# ~> /Users/Britton/.rvm/rubies/ruby-2.2.1/lib/ruby/2.2.0/csv.rb:1256:in `open'
# ~> /Users/Britton/.rvm/rubies/ruby-2.2.1/lib/ruby/2.2.0/csv.rb:1121:in `foreach'
# ~> /Users/Britton/theironyard/programs/ToDo/todo-csv/lib/todo.rb:9:in `initialize'
# ~> /Users/Britton/theironyard/programs/ToDo/todo-csv/bin/todo.rb:3:in `new'
# ~> /Users/Britton/theironyard/programs/ToDo/todo-csv/bin/todo.rb:3:in `<main>'
