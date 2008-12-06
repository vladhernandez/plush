class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :title
      t.integer :product_id
      t.integer :category_id
      t.integer :invite_id

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
