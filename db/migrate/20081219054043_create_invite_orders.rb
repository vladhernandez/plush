class CreateInviteOrders < ActiveRecord::Migration
  def self.up
    create_table :invite_orders do |t|
      t.string :contact_name
      t.string :mailing_address
      t.string :mailing_address_2
      t.string :phone_number
      t.string :email_address
      t.string :design_name
      t.string :quantity_required
      t.boolean :ordered_sample
      t.string :text_paper
      t.string :paper_layer_2
      t.string :paper_layer_3
      t.string :paper_layer_4
      t.string :font_color
      t.string :ribbon_color
      t.text :special_requests
      t.string :invites_design_name
      t.string :invites_quantity_required
      t.boolean :invites_sample_ordered
      t.string :invites_text_paper
      t.string :invites_layer_2
      t.string :invites_layer_3
      t.string :invites_layer_4
      t.string :invites_font_color
      t.string :invites_ribbon_color
      t.string :reply_cards_style
      t.boolean :map
      t.string :hotel_info
      t.boolean :address_labels
      t.boolean :coloured_envelopes
      t.boolean :lined_envelopes
      t.boolean :double_envelopes
      t.text :invites_special_requests
      t.date :wedding_date
      t.string :brides_name
      t.string :grooms_name
      t.string :brides_parents
      t.string :grooms_parents
      t.string :ceremony_location
      t.string :reception_location
      t.time :cocktails_time
      t.time :dinner_time
      t.time :dance_time
      t.string :other_time
      t.text :save_the_date_verse
      t.text :invitation_verse
      t.text :rsvp_verse
      t.text :rsvp_envelope_address
      t.string :rsvp_email_phone
      t.string :map
      t.text :invites_additional_inserts

      t.timestamps
    end
  end

  def self.down
    drop_table :invite_orders
  end
end
