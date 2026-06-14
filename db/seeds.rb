# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
PostEditor.destroy_all
Post.destroy_all
Editor.destroy_all
User.destroy_all

# Users
user1 = User.create!(
  name: "Andrew",
  email: "andrew@example.com"
)

user2 = User.create!(
  name: "John",
  email: "john@example.com"
)

# Editors
editor1 = Editor.create!(
  name: "Ahmed",
  email: "ahmed@example.com"
)

editor2 = Editor.create!(
  name: "Mina",
  email: "mina@example.com"
)

# Posts
post1 = Post.create!(
  title: "Rails Basics",
  content: "Introduction to Rails",
  creator: user1
)

post2 = Post.create!(
  title: "Ruby OOP",
  content: "Object Oriented Programming in Ruby",
  creator: user2
)

# Many-to-Many Relations
PostEditor.create!(
  post: post1,
  editor: editor1
)

PostEditor.create!(
  post: post1,
  editor: editor2
)

PostEditor.create!(
  post: post2,
  editor: editor1
)

puts "Seeds created successfully!"