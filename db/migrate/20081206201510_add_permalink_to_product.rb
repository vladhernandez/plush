class AddPermalinkToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :permalink, :string
    remove_column :products, :collection_id
  end

  def self.down
    remove_column :products, :permalink
  end
end
