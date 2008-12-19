class CreateFavourTagLabelOrders < ActiveRecord::Migration
  def self.up
    create_table :favour_tag_label_orders do |t|
      t.string :name
      t.string :mailing_address
      t.string :shipping_address
      t.string :phone_number
      t.string :email_address
      t.date :wedding_date
      t.string :brides_name
      t.string :grooms_name
      t.boolean :ordered_invites
      t.string :item_1
      t.string :item_1_quantity
      t.string :item_2
      t.string :item_2_quantity
      t.string :item_3
      t.string :item_3_quantity
      t.string :item_4
      t.string :item_4_quantity
      t.string :item_5
      t.string :item_5_quantity
      t.string :font_colours
      t.text :special_requests
      t.text :information

      t.timestamps
    end
  end

  def self.down
    drop_table :favour_tag_label_orders
  end
end
