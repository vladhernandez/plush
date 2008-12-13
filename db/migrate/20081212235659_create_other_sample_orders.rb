class CreateOtherSampleOrders < ActiveRecord::Migration
  def self.up
    create_table :other_sample_orders do |t|
      t.string :name
      t.string :mailing_address
      t.string :mailing_address_2
      t.string :phone_number
      t.string :email_address
      t.date :event_date
      t.string :sample_name_1
      t.string :sample_name_2
      t.string :sample_name_3
      t.string :text_paper
      t.string :text_paper_layer_1
      t.string :text_paper_layer_2
      t.string :text_paper_layer_3
      t.string :text_paper_2
      t.string :text_paper_2_layer_1
      t.string :text_paper_2_layer_2
      t.string :text_paper_2_layer_3
      t.string :text_paper_3
      t.string :text_paper_3_layer_1
      t.string :text_paper_3_layer_2
      t.string :text_paper_3_layer_3
      t.string :font_color_1
      t.string :font_color_2
      t.string :font_color_3
      t.string :ribbon_color_1
      t.string :ribbon_color_2
      t.string :ribbon_color_3
      t.text :special_requests
      t.integer :samples_quantity
      t.integer :samples_quantity_cost
      t.integer :paper_samples_quantity
      t.integer :paper_samples_quantity_cost
      t.integer :paper_swatch_deck_quantity
      t.integer :paper_swatch_deck_quantity_cost
      t.integer :ribbon_swatch_deck_quantity
      t.integer :ribbon_swatch_deck_quantity_cost
      t.integer :subtotal
      t.integer :gst
      t.integer :total

      t.timestamps
    end
  end

  def self.down
    drop_table :other_sample_orders
  end
end
