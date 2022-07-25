# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :name => 'Dominik', :family => 'Michel', :email => 'dominik@ga.co',:password => 'chicken', :admin => true
u2 = User.create :name => 'Craig', :family => 'Bergl', :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Job.destroy_all
j1= Job.create :task => 'Fix sink', :location => 'Sydney',:description => 'Take all sink out and replace with a new one and fix silicon', :duration => '5hr', :image => 'https://i.stack.imgur.com/Be8Th.jpg'
j2= Job.create :task => 'Cut leaves', :location => 'Melbourne',:description => '', :duration => 'Cut leaves in my Garden', :image => 'https://organize.yinteing.com/wp-content/uploads/2017/12/messygarden.jpg'
puts "#{Job.count} jobs"

# Associations ######################################################

puts "Jobs and users"
u1.jobs << j1
u2.jobs << j2


