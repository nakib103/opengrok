class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :projectname,:null => false

      t.timestamps
    end
    add_index :projects,:projectname,:unique => true
  end
end
