class RenameNameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :namel, :name
  end
end
