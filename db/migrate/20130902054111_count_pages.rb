class CountPages < ActiveRecord::Migration
  def up
    add_column :pages, :count, :integer
  end

  def down
    remove_column :pages, :count
  end
end
