class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.text :image_data
      t.integer :author_id
      t.integer :vote_count, default: 0

      t.timestamps
    end
  end
end
