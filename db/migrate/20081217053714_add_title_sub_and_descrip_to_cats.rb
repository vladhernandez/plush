class AddTitleSubAndDescripToCats < ActiveRecord::Migration
  def self.up
    add_column :categories, :title, :string
    add_column :categories, :subtitle, :string
    add_column :categories, :description, :text
  end

  def self.down
    remove_column :categories, :title
    remove_column :categories, :subtitle
    remove_column :categories, :description
  end
end
