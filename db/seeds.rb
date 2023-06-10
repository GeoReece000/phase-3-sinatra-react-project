require 'faker'

# Set the Faker locale to English
Faker::Config.locale = :en

puts "🌱 Seeding spices..."

Article.destroy_all
Author.destroy_all
Category.destroy_all

# Generate fake authors
10.times do
  Author.create(
    author_name: Faker::Name.name,
    writing_category: Faker::Book.genre
  )
end
