class CreateSaveDateOrders < ActiveRecord::Migration
  def self.up
    create_table :save_date_orders do |t|
      t.string :name
      t.string :mailing_address
      t.string :mailing_address_2
      t.string :phone_number
      t.string :email_address
      t.date :wedding_date
      t.string :sample_name
      t.string :sample_name_2
      t.string :sample_name_3
      t.string :text_paper_1
      t.string :text_paper_1_layer_1
      t.string :text_paper_1_layer_2
      t.string :text_paper_1_layer_3
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
      t.string :reply_card_styles
      t.string :paper_sample_color_1
      t.string :paper_sample_color_2
      t.string :paper_sample_color_4
      t.text :special_requests
      t.string :invitations_quantity
      t.string :invitations_subtotal
      t.string :save_the_dates_quantity
      t.string :save_the_dates_subtotal
      t.string :thank_you_cards_quantity
      t.string :thank_you_cards_subtotal
      t.string :programs_quantity
      t.string :programs_subtotal
      t.string :paper_samples_quantity
      t.string :paper_samples_subtotal
      t.string :paper_swatch_deck_quantity
      t.string :paper_swatch_deck_subtotal
      t.string :ribbon_swatch_deck
      t.string :ribbon_swatch_deck_subtotal
      t.string :subtotal
      t.string :gst
      t.string :total

      t.timestamps
    end
  end

  def self.down
    drop_table :save_date_orders
  end
end
