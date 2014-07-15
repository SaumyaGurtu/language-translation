class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :english
      t.text :phonetic

      t.timestamps
    end
  end
end
