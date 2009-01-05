class AddPostAssocToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :post_id, :integer
  end

  def self.down
    remove_column :images, :post_id
  end
end
