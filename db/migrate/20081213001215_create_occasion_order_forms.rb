class CreateOccasionOrderForms < ActiveRecord::Migration
  def self.up
    create_table :occasion_order_forms do |t|
      t.string :name
      t.string :mailing_address
      t.string :mailing_address_2
      t.string :shipping_address
      t.string :shipping_address_2
      t.string :phone_number
      t.string :email_address
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
      t.boolean :print_return
      t.boolean :sealing_sticker
      t.boolean :colored_envelope
      t.boolean :lined_envelope
      t.boolean :double_envelope
      t.text :verse_information
      t.string :type_of_event
      t.string :rsvp_contact

      t.timestamps
    end
  end

  def self.down
    drop_table :occasion_order_forms
  end
end
