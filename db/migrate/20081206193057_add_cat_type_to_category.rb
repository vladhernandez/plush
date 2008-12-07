class AddCatTypeToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :category_type, :string
  end

  def self.down
    remove_column :categories, :category_type
  end
end
