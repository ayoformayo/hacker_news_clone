class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |post|
      post.integer :user_id
      post.string :url
      post.string :title
    end
  end
end
