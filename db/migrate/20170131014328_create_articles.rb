class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :contents
      t.string :comments
      t.integer :numberoflikes
      t.integer :numberofretweet
      t.integer :user_id

      t.timestamps
    end
  end
end
