# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Administration.create!(name: 'AU', phone_number: '630-555-5555', state: 'IL', zip: '60506')
Committee.create!(administration_id: 1, name: 'healthy food choices', num_of_faculty: 5)
Faculty.create!(fname: 'Mary', lname: 'Keenan', phone_number:'630-234-1234', position: 'janitor', administration_id: 1, committee_id: 1)
Faculty.create!(fname: 'Sam', lname: 'Whitwer', phone_number:'630-256-1764', position: 'professor', administration_id: 1, committee_id: 1)
Faculty.create!(fname: 'Michal', lname: 'Bermas', phone_number:'630-134-0984', position: 'librarian', administration_id: 1, committee_id: 1)
Faculty.create!(fname: 'Geoffery', lname: 'Greiner', phone_number:'630-274-1839', position: 'cafateria worker', administration_id: 1, committee_id: 1)
Faculty.create!(fname: 'Robert', lname: 'Picardo', phone_number:'630-543-9876', position: 'gym teacher', administration_id: 1, committee_id: 1)
Program.create!(name: 'advanced nap time', faculty_id: 3, open_space: 6)
Program.create!(name: 'gym', faculty_id: 5, open_space: 27)
Program.create!(name: 'fine dinning', faculty_id: 4, open_space: 12)
Program.create!(name: 'how to organize', faculty_id: 1, open_space: 9)
Assessment.create!(grade: 'B-', faculty_id: 3, program_id: 1)
Assessment.create!(grade: 'C-', faculty_id: 5, program_id: 2)
Assessment.create!(grade: 'A+', faculty_id: 4, program_id: 3)
Assessment.create!(grade: 'D', faculty_id: 1, program_id: 4)