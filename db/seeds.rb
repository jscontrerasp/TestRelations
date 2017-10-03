# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times{
    User.create(name: Faker::Name.first_name + ' ' + Faker::Name.unique.last_name, 
                email: Faker::Internet.unique.user_name + '@unal.edu.co', 
                age:rand(15..40)
                ).save()
}
#User.create(name: "joan", email: "jscontrerasp", age:21).save()
#User.create(name: "nicolas", email: "nicontreras", age:17)
#Event.create(nameEvent: "partido", place: "playita").save()
#Event.create(nameEvent: "ajedrez", place: "casa").save()
