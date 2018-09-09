# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Locale.create({ id: 1, name: 'en', title: 'English' })
Role.create({ id: 1, name: 'superadmin', description: 'Super Admin can access all.' })
User.create({ id: 1, email: 'admin@example.com', locale_id: 1, name: 'Admin', password: 'admin999', password_confirmation: 'admin999' })
