class ChangeProductNameToTitle < ActiveRecord::Migration
  def self.up
    rename_column :products, :name, :title
  end

  def self.down
    rename_column :products, :title, :name
  end
end
