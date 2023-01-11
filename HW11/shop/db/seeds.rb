# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.create(title: 'BMW')
Category.create(title: 'Toyota')
Category.create(title: 'Mitsubishi')
Category.create(title: 'Audi')
Category.create(title: 'Volvo')
Category.create(title: 'Hummer')

Product.create(name: 'BMW 8-series',
               description: 'Пробіг 196 тис. км Двигун 5 л (300 к.с. / 221 кВт) • Бензин місто 16 • змішаний 13 • траса 10',
               image: "https://cdn2.riastatic.com/photosnew/auto/photo/bmw_8-series__391489827f.webp",
               price: 29000.00,
               category_id: 1)
Product.create(name: 'Toyota Chaser 1998',
               description: 'Пробіг - не важливо це з священна тойота)) 2.5 л (600 к.с. / 441 кВт) • Бензин місто 18 • змішаний 11 • траса 10',
               image: "https://cdn0.riastatic.com/photosnew/auto/photo/toyota_chaser__467337980f.webp",
               price: 24000.00,
               category_id: 2)
Product.create(name: 'Mitsubishi Lancer Evolution EVOLUTION 2007',
               description: 'Пробіг 72 тис. км Двигун 2 л • Бензин',
               image: "https://cdn3.riastatic.com/photosnew/auto/photo/mitsubishi_lancer-evolution__461440293f.webp",
               price: 34000.00,
               category_id: 3)
Product.create(name: 'Mitsubishi Lancer Evolution 2006',
               description: 'Пробіг 135 тис. км, Двигун 2 л (400 к.с. / 294 кВт) • Бензин',
               image: "https://cdn3.riastatic.com/photosnew/auto/photo/mitsubishi_lancer-evolution__436532933f.webp",
               price: 32000.00,
               category_id: 3)
Product.create(name: 'Audi A7 sportback',
               description: 'Пробіг 230 тис. км Двигун 3 л (450 к.с. / 331 кВт) • Бензин місто 13 • траса 11',
               image: "https://cdn4.riastatic.com/photosnew/auto/photo/audi_a7-sportback__478779674f.webp",
               price: 27000.00,
               category_id: 4)
Product.create(name: 'Volvo S90 AWD 2018',
               description: 'Пробіг 123 тис. км Двигун 2 л • Дизель',
               image: "https://cdn2.riastatic.com/photosnew/auto/photo/volvo_s90__477500172f.webp",
               price: 28600.00,
               category_id: 5)
Product.create(name: 'Hummer H2 2003',
               description: 'Позашляховик / Кросовер • 5 дверей Пробіг 217 тис. км Двигун 6 л • Газ / Бензин',
               image: "https://cdn0.riastatic.com/photosnew/auto/photo/hummer_h2__476730565f.webp",
               price: 31500.00,
               category_id: 6)

User.create!(email: 'user@example.com', password: '123456', password_confirmation: '123456')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
