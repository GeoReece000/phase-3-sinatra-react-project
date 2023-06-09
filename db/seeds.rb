require 'faker'

puts "🌱 Seeding spices..."

Article.destroy_all
Author.destroy_all
Category.destroy_all

# Set the Faker locale to English
Faker::Config.locale = 'en'

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
  author = Author.all.sample
  category = Category.all.sample

  Article.create(
    author_name: author.author_name,
    views: Faker::Number.between(from: 0, to: 1000),
    author_id: author.id,
    category_id: category.id,
    # created_at: Faker::Time.between(from: 1.year.ago, to: Time.zone),
    # updated_at: Faker::Time.between(from: 1.year.ago, to: Time.zone),
    comments: Faker::Lorem.paragraph,
    article: Faker::Lorem.paragraphs(number: 3).join("\n\n")
  )
end

puts "✅ Done seeding!"
