class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.references :installation, index: true

      t.timestamps
    end
  end
end
