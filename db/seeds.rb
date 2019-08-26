# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
User.destroy_all

admin = User.create(email:"admin@shared_shelf.com", password:"lorem123456")
LANGUAGES = ['English', 'Portuguese', 'French', 'German', 'Italian']

puts "Start seeding books..."
50.times do
 puts "."
 book = Book.create(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, photo:"wwww.shared_shelf", language: LANGUAGES.sample)
end
puts "Done!"
