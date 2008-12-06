class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.integer :collection_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
