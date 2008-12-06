class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :title
      t.string :permalink
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
