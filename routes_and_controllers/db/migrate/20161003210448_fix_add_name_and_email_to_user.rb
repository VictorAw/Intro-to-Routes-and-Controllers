class FixAddNameAndEmailToUser < ActiveRecord::Migration
  def change
    drop_table :users

    create_table :users do |t|
      t.string :name, null: false
      t.string :email
      t.timestamps null: false
    end
  end
end
