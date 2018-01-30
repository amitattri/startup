# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
Hotel.create(airport_id: 2, name: "Roseate House", phone: 1234578, email: "asd@wr.ed", photo: "dfgbhjkl", latitude: "00.000", longitude: "00.0000", distance_from_airport: 2, per_day_cost: 30000.0)
Hotel.create(airport_id: 2, name: "Pullman House", phone: 1234578, email: "asd@wr.ed", photo: "dfgbhjkl", latitude: "00.000", longitude: "00.0000", distance_from_airport: 4, per_day_cost: 30000.0)
Hotel.create(airport_id: 2, name: "JW Marriat", phone: 1234578, email: "asd@wr.ed", photo: "dfgbhjkl", latitude: "00.000", longitude: "00.0000", distance_from_airport: 1.5, per_day_cost: 30000.0)

Transporter.create(name: "Test1", phone: "1234567890", email: "test@abc.com", airport_id: 2)
Transporter.create(name: "Test1", phone: "1234567890", email: "test@abc.com", airport_id: 2)
Transporter.create(name: "Test1", phone: "1234567890", email: "test@abc.com", airport_id: 2)

CityAttraction.create(name: "Test", description: "this is description", longitude: "00.0000", latitude: "00.0000", airport_id: 2, photo_1: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9C1i3z3XnI9BpyLgqyhUnUYhLVTW2nJPDB3TgvZzeiIA67MRS3w", photo_2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9C1i3z3XnI9BpyLgqyhUnUYhLVTW2nJPDB3TgvZzeiIA67MRS3w")
CityAttraction.create(name: "Test", description: "this is description", longitude: "00.0000", latitude: "00.0000", airport_id: 2, photo_1: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9C1i3z3XnI9BpyLgqyhUnUYhLVTW2nJPDB3TgvZzeiIA67MRS3w", photo_2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9C1i3z3XnI9BpyLgqyhUnUYhLVTW2nJPDB3TgvZzeiIA67MRS3w")
CityAttraction.create(name: "Test", description: "this is description", longitude: "00.0000", latitude: "00.0000", airport_id: 2, photo_1: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9C1i3z3XnI9BpyLgqyhUnUYhLVTW2nJPDB3TgvZzeiIA67MRS3w", photo_2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9C1i3z3XnI9BpyLgqyhUnUYhLVTW2nJPDB3TgvZzeiIA67MRS3w")

Handler.create(name: "Test", phone: "123456789", email: "abc@abc.com", airport_id: 2, handling_cost: 12000, address: "qwertyuiop", contact_person: "test")
Handler.create(name: "Test", phone: "123456789", email: "abc@abc.com", airport_id: 2, handling_cost: 12000, address: "qwertyuiop", contact_person: "test")
Handler.create(name: "Test", phone: "123456789", email: "abc@abc.com", airport_id: 2, handling_cost: 12000, address: "qwertyuiop", contact_person: "test")
=end



Training.create(name: "CAE", cockpit: true)
Training.create(name: "CAE - World", cockpit: true)
Training.create(name: "FWSTC", cockpit: true)
Training.create(name: "Flight Safety", cockpit: false)
Training.create(name: "GTA", cockpit: false)
Training.create(name: "BALTIC", cockpit: false)


Institute.create(name: "GMR Aviation Academy", address: "delhi", email: "abc@abc.com")
Institute.create(name: "DFC", address: "delhi", email: "abc@abc.com")
Institute.create(name: "INDIGO", address: "delhi", email: "abc@abc.com")
Institute.create(name: "Ditch & Drill", address: "delhi", email: "abc@abc.com")

InstituteTraining.create(institute_id: 1, training_id: 2, course_time: 15, cost: 19000)
InstituteTraining.create(institute_id: 1, training_id: 3, course_time: 15, cost: 19000)
InstituteTraining.create(institute_id: 2, training_id: 1, course_time: 15, cost: 19000)
InstituteTraining.create(institute_id: 2, training_id: 3, course_time: 15, cost: 19000)
InstituteTraining.create(institute_id: 3, training_id: 4, course_time: 15, cost: 19000)
InstituteTraining.create(institute_id: 3, training_id: 5, course_time: 15, cost: 19000)
InstituteTraining.create(institute_id: 3, training_id: 6, course_time: 15, cost: 19000)
InstituteTraining.create(institute_id: 4, training_id: 3, course_time: 15, cost: 19000)