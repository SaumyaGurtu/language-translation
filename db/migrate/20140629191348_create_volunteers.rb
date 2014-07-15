class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :vname
      t.references :site, index: true

      t.timestamps
    end
  end
end
