class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    t.string  :title
    t.integer :category_id
    t.string  :description
    t.string  :price
    t.string  :email
    t.timestamps
    end
  end
end
