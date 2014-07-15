class CreateInstallations < ActiveRecord::Migration
  def change
    create_table :installations do |t|
      t.string :installation
      t.string :email
      t.text :address
      t.string :contact

      t.timestamps
    end
  end
end
