class AddLanguageContributionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :language_contribution, :string
  end
end
