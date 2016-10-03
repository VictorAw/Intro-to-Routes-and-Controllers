class AddNameAndEmailToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :email
  end
end
