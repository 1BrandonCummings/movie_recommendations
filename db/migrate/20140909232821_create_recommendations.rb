class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :genre
      t.boolean :watched, :default => false
      t.integer :votes
      t.references :user_id, index: true

      t.timestamps
    end
  end
end
