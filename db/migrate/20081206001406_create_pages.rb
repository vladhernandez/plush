class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.string :breadcrumb
      t.text :content
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :position
      t.string :layout

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
