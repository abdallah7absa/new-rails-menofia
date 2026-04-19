# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
users = User.create!([
  { name: "user1", email: "user1@gmail.com" },
  { name: "user2", email: "user2@gmail.com" }
])

posts = Post.create!([
  { title: "post1", body: "msa2 elward", creator: users[0] },
  { title: "post2", body: "sba7 elfol", creator: users[1] }
])

editors = Editor.create!([
  { name: "editor1", email: "editor1@gmail.com" },
  { name: "editor2", email: "editor2@gmail.com" }
])

PostEditor.create!([
  { post: posts[0], editor: editors[0] },
  { post: posts[0], editor: editors[1] },
  { post: posts[1], editor: editors[0] }
])