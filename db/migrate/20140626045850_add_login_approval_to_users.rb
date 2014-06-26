class AddLoginApprovalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login_approval, :string
  end
end
