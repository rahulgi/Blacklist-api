class CreatePage < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.string :base_url
      
      # adds created_at and updated_at fields
      t.timestamps
    end
  end

  def down
    drop_table :pages
  end
end
