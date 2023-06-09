require 'faker'

# Set the Faker locale to English
Faker::Config.locale = 'en'

puts "🌱 Seeding spices..."

Article.destroy_all
Author.destroy_all
Category.destroy_all

# Set the Faker locale to English
Faker::Config.locale = 'en'

# Seed your database here

# Generate fake authors
10.times do
  Author.create(
    author_name: Faker::Name.name,
    writing_category: Faker::Book.genre
  )
end

# Generate fake categories
5.times do
  Category.create(
    category_name: Faker::Book.genre
  )
end

# Generate fake articles
30.times do
  Article.create(
    author_name: Faker::Name.name,
    views: Faker::Number.between(from: 0, to: 1000),
    author_id: Author.pluck(:id).sample,
    category_id: Category.pluck(:id).sample,
    # created_at: Faker::Time.between(from: 1.year.ago, to: Time.zone.now),
    # updated_at: Faker::Time.between(from: 1.year.ago, to: Time.zone.now),
    comments: Faker::Lorem.paragraph,
    article: Faker::Lorem.paragraphs(number: 3).join("\n\n")
  )
end

puts "✅ Done seeding!"
