class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :role_type, :string
  end
end
