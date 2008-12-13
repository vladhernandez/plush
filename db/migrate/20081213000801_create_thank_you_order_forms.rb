class CreateThankYouOrderForms < ActiveRecord::Migration
  def self.up
    create_table :thank_you_order_forms do |t|
      t.string :name
      t.string :mailing_address
      t.string :mailing_address_2
      t.string :shipping_address
      t.string :shipping_address_2
      t.string :phone_number
      t.string :email_address
      t.date :wedding_date
      t.string :brides_name
      t.string :grooms_name
      t.string :design_contact_number
      t.string :design_name
      t.integer :quantity
      t.string :ordered_sample
      t.string :sample_number
      t.string :text_paper
      t.string :text_paper_layer_2
      t.string :text_paper_layer_3
      t.string :text_paper_layer_4
      t.string :font_color
      t.string :ribbon_color
      t.text :special_requests
      t.text :card_text

      t.timestamps
    end
  end

  def self.down
    drop_table :thank_you_order_forms
  end
end
