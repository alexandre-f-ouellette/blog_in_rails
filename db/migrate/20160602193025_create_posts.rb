class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.string :title
      t.text :body
      t.datetime :published_date
      t.string :image_url

      t.timestamps null: false
    end
    add_index :posts, :author_id
  end
end
