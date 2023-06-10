require 'faker'

# Set the Faker locale to English
Faker::Config.locale = :en

puts "🌱 Seeding spices..."

Article.destroy_all
Author.destroy_all
Category.destroy_all
