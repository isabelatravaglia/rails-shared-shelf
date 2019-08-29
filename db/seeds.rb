# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Transaction.destroy_all
Book.destroy_all
User.destroy_all

admin = User.create(email:"admin@shared_shelf.com", password:"lorem123456")
LANGUAGES = ['English', 'Portuguese', 'French', 'German', 'Italian']

# puts "Start seeding books..."
# 50.times do
#  puts "."
#  book = Book.create(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, photo:"wwww.shared_shelf", language: LANGUAGES.sample)
# end
# puts "Done!"

puts "Start seeding books..."

url_1 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915288/Books%20Shared%20Shelt/call_me_by_your_name_et8xbs.jpg"
book_1 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_1.remote_photo_url = url_1
book_1.save

url_2 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915431/Books%20Shared%20Shelt/b1622-1_dplb4y.jpg"
book_2 =  Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_2.remote_photo_url = url_2
book_2.save

url_3 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915436/Books%20Shared%20Shelt/KoF2-248x330_yampyc.jpg"
book_3 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_3.remote_photo_url = url_3
book_3.save

url_4 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915466/Books%20Shared%20Shelt/Digital_Transformation_front_cover-200_grande_c5kjvk.jpg"
book_4 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_4.remote_photo_url = url_4
book_4.save

url_5 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915445/Books%20Shared%20Shelt/BrightCoverFront_med_dq07zy.jpg"
book_5 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_5.remote_photo_url = url_5
book_5.save

url_6 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915451/Books%20Shared%20Shelt/51wOADerVyL._SX324_BO1_204_203_200__lw2fc2.jpg"
book_6 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_6.remote_photo_url = url_6
book_6.save

url_7 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915288/Books%20Shared%20Shelt/51dipCXepcL._SY346__xrgmqe.jpg"
book_7 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_7.remote_photo_url = url_7
book_7.save

url_8 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915458/Books%20Shared%20Shelt/51UVVOhk1sL._SX302_BO1_204_203_200__tprxzl.jpg"
book_8 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_8.remote_photo_url = url_8
book_8.save

url_9 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915288/Books%20Shared%20Shelt/51J_k8I4MIL._SY346__sjorer.jpg"
book_9 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_9.remote_photo_url = url_9
book_9.save

url_10 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915288/Books%20Shared%20Shelt/519Nw0Uw_jL_roiuh3.jpg"
book_10 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_10.remote_photo_url = url_10
book_10.save

url_11 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915440/Books%20Shared%20Shelt/518-21kHHyL._SX330_BO1_204_203_200__wupi4o.jpg"
book_11 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_11.remote_photo_url = url_11
book_11.save

url_12 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915288/Books%20Shared%20Shelt/512TyUYFSSL._SY346__midq68.jpg"
book_12 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_12.remote_photo_url = url_12
book_12.save

url_13 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915354/Books%20Shared%20Shelt/41yu2qXhXXL_rurqlr.jpg"
book_13 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_13.remote_photo_url = url_13
book_13.save

url_14 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915288/Books%20Shared%20Shelt/41qCNWh8GaL._SX308_BO1_204_203_200__f2un5r.jpg"
book_14 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_14.remote_photo_url = url_14
book_14.save

url_15 = "https://res.cloudinary.com/veronicabraga/image/upload/v1566915434/Books%20Shared%20Shelt/295900_800h_cover_dcambz.png"
book_15 = Book.new(name: Faker::Book.title, author: Faker::Book.author, number_of_pages: rand(50..650), publishing_year: rand(1800..2019), description: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), user: admin, language: LANGUAGES.sample)
book_15.remote_photo_url = url_15
book_15.save

puts "creating a profile..."
vicente = Profile.create!(first_name: "vicente", last_name: "dauce", phone_number: "825369276", address: "maputo", photo: "something", user: User.first)


puts "Done!"


