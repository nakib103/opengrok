class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username,:null => false
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
    add_index :users,:username,:unique => true
  end
end
