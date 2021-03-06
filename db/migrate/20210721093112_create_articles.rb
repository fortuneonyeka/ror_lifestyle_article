# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.text :image_data
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.integer :vote_count, default: 0

      t.timestamps
    end
  end
end


