class AddAdditionalInsertsToInvites < ActiveRecord::Migration
  def self.up
    add_column :invites, :additional_inserts, :string
  end

  def self.down
    remove_column :invites, :additional_inserts
  end
end
