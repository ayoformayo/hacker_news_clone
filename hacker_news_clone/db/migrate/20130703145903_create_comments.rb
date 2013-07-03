class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |comment|
      comment.string :content
      comment.integer :user_id
      comment.integer :post_id
      comment.timestamps
    end
  end
end
