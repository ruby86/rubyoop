#Вызвать одну задачу
task :packet do
  puts "file loaded"
end

#вызвать цепочку задач
task :packet_two => :packet do
  puts "task number two"
end

#загрузить все модули и классы rails
task :s_file => :environment do
  p = User.first
  puts p.login
end

#Задача для конекретного пространства имён
namespace :user do
  task :first do
    puts "Задача №1"
  end

  task :last do
    puts "Задача №2"
  end
end