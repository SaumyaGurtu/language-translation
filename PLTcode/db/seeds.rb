# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# must be taken care of at the time of production.

   users = User.create([{ username: 'Chicago' , first_name: 'Chicago', last_name: 'Go', role: 'Admin', login_approval: 'Yes', 
		   password: 'password', password_confirmation: 'password', email: 'saumyagurtu@gmail.com'}])
   users = User.create([{ username: 'Chicago1' , first_name: 'Chicago1', last_name: 'Go1', role: 'Admin', login_approval: 'Yes', 
		   password: 'password1', password_confirmation: 'password1', email: 'saumya.gurtu@students.iiit.ac.in'}])
