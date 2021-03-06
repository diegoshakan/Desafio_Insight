# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?

  user = User.create(email: "user@example.com", password: "changeme", password_confirmation: "changeme")
  3.times do
    tarefa = FactoryBot.create(:tarefa, user_id: user.id)
  end
end