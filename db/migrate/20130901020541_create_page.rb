class CreatePage < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.string :base_url
    end
  end

  def down
    drop_table :pages
  end
end
