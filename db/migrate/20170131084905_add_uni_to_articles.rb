class AddUniToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :uni, :string
  end
end
