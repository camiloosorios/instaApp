class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :description
      t.integer :user_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
