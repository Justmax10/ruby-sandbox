require_relative 'task'

tasks = []

puts "Welcome to TaskTracker CLI!"
loop do
  puts "\nOptions:\n1. Add Task\n2. View Tasks\n3. Mark Task Complete\n4. Exit"
  print "> "
  choice = gets.chomp

  case choice
  when "1"
    print "Enter task description: "
    desc = gets.chomp
    task = Task.new(desc)
    tasks << task
    puts "Task added!"
  when "2"
    puts "\nYour Tasks:"
    tasks.each_with_index { |task, i| puts "#{i + 1}. #{task}" }
  when "3"
    puts "\nWhich task number to mark complete?"
    tasks.each_with_index { |task, i| puts "#{i + 1}. #{task}" }
    print "> "
    idx = gets.chomp.to_i - 1
    tasks[idx]&.mark_complete
    puts "Task updated!"
  when "4"
    puts "Goodbye!"
    break
  else
    puts "Invalid option. Try again."
  end
end
