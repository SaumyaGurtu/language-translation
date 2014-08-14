# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# must be taken care of at the time of production.

   users = User.create([{ username: 'Admin1' , first_name: 'Adam', last_name: 'Wilkins', role: 'Admin', login_approval: 'Yes', 
		   password: 'admin1', password_confirmation: 'admin1', email: 'saumyagurtu@gmail.com'}])
   users = User.create([{ username: 'Admin2' , first_name: 'Neil', last_name: 'Bohr', role: 'Admin', login_approval: 'Yes', 
		   password: 'admin2', password_confirmation: 'admin2', email: 'saumya.gurtu@students.iiit.ac.in'}])
