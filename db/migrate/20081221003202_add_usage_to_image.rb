class AddUsageToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :usage, :string
  end

  def self.down
    remove_column :images, :usage
  end
end
