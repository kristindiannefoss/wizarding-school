# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed

  students = [
    "Harry Potter",
    "Ron Weasley",
    "Hermione Granger",
    "Lucius Malfoy",
    "Luna Lovegood",
    "Neville Longbottom"
  ]

  students.each do |name|
    Student.create(name: name)
  end
end

seed
