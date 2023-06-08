require 'faker'

puts "🌱 Seeding spices..."

Article.destroy_all
Author.destroy_all
Category.destroy_all

# Seed your database here

# Generate fake data for authors
10.times do
  author_name = Faker::Name.name
  writing_category = Faker::Book.genre

  Author.create(author_name: author_name, writing_category: writing_category)
end

# Generate fake data for categories
5.times do
  category_name = Faker::Book.genre

  Category.create(category_name: category_name)
end

# Generate fake data for articles
require 'faker'

puts "🌱 Seeding spices..."

Article.destroy_all
Author.destroy_all
Category.destroy_all

# Generate fake data for authors
10.times do
  author_name = Faker::Name.name
  writing_category = Faker::Book.genre

  Author.create(author_name: author_name, writing_category: writing_category)
end

# Generate fake data for categories
5.times do
  category_name = Faker::Book.genre

  Category.create(category_name: category_name)
end

# Generate fake data for articles
50.times do
  author = Author.order("RANDOM()").first
  category = Category.order("RANDOM()").first
  author_id = author.id
  author_name = author.author_name
  writing_category = author.writing_category
  category_name = category.category_name
  views = rand(100..1000)
  comments_count = rand(0..10)

  article = Article.create(
    author_name: author_name,
    category_id: category.id,
    views: views,
    author_id: author_id
  )

  # Generate fake data for comments on each article
  comments_count.times do
    comment = Faker::Lorem.paragraph

    # Comment.create(comments: comment, article_id: article.id)
  end
end

puts "✅ Done seeding!"


