# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.destroy_all
Image.all.destroy_all
UserImage.all.destroy_all

ray = User.create(username: "ray", password: "1234", first_name: 'Rachael', last_name: 'Ghorbani')

fox = Image.create(component: "FoxSvg", title: "Fox")
# squirrel image already created
#rabbit image already created