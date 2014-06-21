class AddDetailsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :category, :string
    add_column :articles, :picture, :string
  end
end
