class AddImagetagToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :imagetag, :string
  end
end
