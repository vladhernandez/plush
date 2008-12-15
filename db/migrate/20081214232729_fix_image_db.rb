class FixImageDb < ActiveRecord::Migration
  def self.up
    add_column :images, :file_updated_at, :datetime
  end

  def self.down
    remove_column :images, :file_updated_at
  end
end
