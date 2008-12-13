class CreateWeddingSampleOrders < ActiveRecord::Migration
  def self.up
    create_table :wedding_sample_orders do |t|
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
      t.string :reply_card_style
      t.string :paper_sample_color_1
      t.string :paper_sample_color_2
      t.string :paper_sample_color_3
      t.string :paper_sample_color_4
      t.text :special_requests
      t.integer :invites_quantity
      t.integer :invites_quantity_cost
      t.integer :save_the_date_quantity
      t.integer :save_the_date_quantity_cost
      t.integer :thank_you_cards_quantity
      t.integer :thank_you_cards_quantity_cost
      t.integer :programs_quantity
      t.integer :programs_quantity_cost
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
    drop_table :wedding_sample_orders
  end
end
