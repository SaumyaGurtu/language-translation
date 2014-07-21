class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.string :name
      t.references :site, index: true

      t.timestamps
    end
  end
end
