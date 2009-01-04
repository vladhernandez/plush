# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090104204843) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.string   "permalink"
    t.integer  "parent_id",     :limit => 11
    t.integer  "lft",           :limit => 11
    t.integer  "rgt",           :limit => 11
    t.integer  "position",      :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category_type"
    t.string   "subtitle"
    t.text     "description"
  end

  create_table "favour_tag_labels", :force => true do |t|
    t.string   "name"
    t.string   "mailing_address"
    t.string   "shipping_address"
    t.string   "phone_number"
    t.string   "email_address"
    t.date     "wedding_date"
    t.string   "brides_name"
    t.string   "grooms_name"
    t.boolean  "ordered_invites"
    t.string   "item_1"
    t.string   "item_1_quantity"
    t.string   "item_2"
    t.string   "item_2_quantity"
    t.string   "item_3"
    t.string   "item_3_quantity"
    t.string   "item_4"
    t.string   "item_4_quantity"
    t.string   "item_5"
    t.string   "item_5_quantity"
    t.string   "font_colours"
    t.text     "special_requests"
    t.text     "information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "title"
    t.integer  "product_id",        :limit => 11
    t.integer  "category_id",       :limit => 11
    t.integer  "invite_id",         :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size",    :limit => 11
    t.datetime "file_updated_at"
    t.string   "usage"
  end

  create_table "invites", :force => true do |t|
    t.string   "contact_name"
    t.string   "mailing_address"
    t.string   "mailing_address_2"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "design_name"
    t.string   "quantity_required"
    t.boolean  "ordered_sample"
    t.string   "text_paper"
    t.string   "paper_layer_2"
    t.string   "paper_layer_3"
    t.string   "paper_layer_4"
    t.string   "font_color"
    t.string   "ribbon_color"
    t.text     "special_requests"
    t.string   "invites_design_name"
    t.string   "invites_quantity_required"
    t.boolean  "invites_sample_ordered"
    t.string   "invites_text_paper"
    t.string   "invites_layer_2"
    t.string   "invites_layer_3"
    t.string   "invites_layer_4"
    t.string   "invites_font_color"
    t.string   "invites_ribbon_color"
    t.string   "reply_cards_style"
    t.integer  "map",                        :limit => 255
    t.string   "hotel_info"
    t.boolean  "address_labels"
    t.boolean  "coloured_envelopes"
    t.boolean  "lined_envelopes"
    t.boolean  "double_envelopes"
    t.text     "invites_special_requests"
    t.date     "wedding_date"
    t.string   "brides_name"
    t.string   "grooms_name"
    t.string   "brides_parents"
    t.string   "grooms_parents"
    t.string   "ceremony_location"
    t.string   "reception_location"
    t.time     "cocktails_time"
    t.time     "dinner_time"
    t.time     "dance_time"
    t.string   "other_time"
    t.text     "save_the_date_verse"
    t.text     "invitation_verse"
    t.text     "rsvp_verse"
    t.text     "rsvp_envelope_address"
    t.string   "rsvp_email_phone"
    t.text     "invites_additional_inserts"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "additional_inserts"
  end

  create_table "occasions", :force => true do |t|
    t.string   "name"
    t.string   "mailing_address"
    t.string   "mailing_address_2"
    t.string   "shipping_address"
    t.string   "shipping_address_2"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "design_name"
    t.integer  "quantity",           :limit => 11
    t.string   "ordered_sample"
    t.string   "sample_number"
    t.string   "text_paper"
    t.string   "text_paper_layer_2"
    t.string   "text_paper_layer_3"
    t.string   "text_paper_layer_4"
    t.string   "font_color"
    t.string   "ribbon_color"
    t.boolean  "print_return"
    t.boolean  "sealing_sticker"
    t.boolean  "colored_envelope"
    t.boolean  "lined_envelope"
    t.boolean  "double_envelope"
    t.text     "verse_information"
    t.string   "type_of_event"
    t.string   "rsvp_contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "other_samples", :force => true do |t|
    t.string   "name"
    t.string   "mailing_address"
    t.string   "mailing_address_2"
    t.string   "phone_number"
    t.string   "email_address"
    t.date     "event_date"
    t.string   "sample_name_1"
    t.string   "sample_name_2"
    t.string   "sample_name_3"
    t.string   "text_paper"
    t.string   "text_paper_layer_1"
    t.string   "text_paper_layer_2"
    t.string   "text_paper_layer_3"
    t.string   "text_paper_2"
    t.string   "text_paper_2_layer_1"
    t.string   "text_paper_2_layer_2"
    t.string   "text_paper_2_layer_3"
    t.string   "text_paper_3"
    t.string   "text_paper_3_layer_1"
    t.string   "text_paper_3_layer_2"
    t.string   "text_paper_3_layer_3"
    t.string   "font_color_1"
    t.string   "font_color_2"
    t.string   "font_color_3"
    t.string   "ribbon_color_1"
    t.string   "ribbon_color_2"
    t.string   "ribbon_color_3"
    t.text     "special_requests"
    t.integer  "samples_quantity",                 :limit => 11
    t.integer  "samples_quantity_cost",            :limit => 11
    t.integer  "paper_samples_quantity",           :limit => 11
    t.integer  "paper_samples_quantity_cost",      :limit => 11
    t.integer  "paper_swatch_deck_quantity",       :limit => 11
    t.integer  "paper_swatch_deck_quantity_cost",  :limit => 11
    t.integer  "ribbon_swatch_deck_quantity",      :limit => 11
    t.integer  "ribbon_swatch_deck_quantity_cost", :limit => 11
    t.integer  "subtotal",                         :limit => 11
    t.integer  "gst",                              :limit => 11
    t.integer  "total",                            :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.string   "breadcrumb"
    t.text     "content"
    t.integer  "parent_id",  :limit => 11
    t.integer  "lft",        :limit => 11
    t.integer  "rgt",        :limit => 11
    t.integer  "position",   :limit => 11
    t.string   "layout"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.text     "content"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.integer  "category_id", :limit => 11
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.string   "mailing_address"
    t.string   "mailing_address_2"
    t.string   "shipping_address"
    t.string   "shipping_address_2"
    t.string   "phone_number"
    t.string   "email_address"
    t.date     "wedding_date"
    t.string   "brides_name"
    t.string   "grooms_name"
    t.string   "design_contact_number"
    t.string   "design_name"
    t.integer  "quantity",              :limit => 11
    t.string   "ordered_sample"
    t.string   "sample_number"
    t.string   "text_paper"
    t.string   "text_paper_layer_2"
    t.string   "text_paper_layer_3"
    t.string   "text_paper_layer_4"
    t.string   "font_color"
    t.string   "ribbon_color"
    t.text     "special_requests"
    t.text     "program_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "save_dates", :force => true do |t|
    t.string   "name"
    t.string   "mailing_address"
    t.string   "mailing_address_2"
    t.string   "phone_number"
    t.string   "email_address"
    t.date     "wedding_date"
    t.string   "sample_name"
    t.string   "sample_name_2"
    t.string   "sample_name_3"
    t.string   "text_paper_1"
    t.string   "text_paper_1_layer_1"
    t.string   "text_paper_1_layer_2"
    t.string   "text_paper_1_layer_3"
    t.string   "text_paper_2"
    t.string   "text_paper_2_layer_1"
    t.string   "text_paper_2_layer_2"
    t.string   "text_paper_2_layer_3"
    t.string   "text_paper_3"
    t.string   "text_paper_3_layer_1"
    t.string   "text_paper_3_layer_2"
    t.string   "text_paper_3_layer_3"
    t.string   "font_color_1"
    t.string   "font_color_2"
    t.string   "font_color_3"
    t.string   "ribbon_color_1"
    t.string   "ribbon_color_2"
    t.string   "ribbon_color_3"
    t.string   "reply_card_styles"
    t.string   "paper_sample_color_1"
    t.string   "paper_sample_color_2"
    t.string   "paper_sample_color_4"
    t.text     "special_requests"
    t.string   "invitations_quantity"
    t.string   "invitations_subtotal"
    t.string   "save_the_dates_quantity"
    t.string   "save_the_dates_subtotal"
    t.string   "thank_you_cards_quantity"
    t.string   "thank_you_cards_subtotal"
    t.string   "programs_quantity"
    t.string   "programs_subtotal"
    t.string   "paper_samples_quantity"
    t.string   "paper_samples_subtotal"
    t.string   "paper_swatch_deck_quantity"
    t.string   "paper_swatch_deck_subtotal"
    t.string   "ribbon_swatch_deck"
    t.string   "ribbon_swatch_deck_subtotal"
    t.string   "subtotal"
    t.string   "gst"
    t.string   "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thank_yous", :force => true do |t|
    t.string   "name"
    t.string   "mailing_address"
    t.string   "mailing_address_2"
    t.string   "shipping_address"
    t.string   "shipping_address_2"
    t.string   "phone_number"
    t.string   "email_address"
    t.date     "wedding_date"
    t.string   "brides_name"
    t.string   "grooms_name"
    t.string   "design_contact_number"
    t.string   "design_name"
    t.integer  "quantity",              :limit => 11
    t.string   "ordered_sample"
    t.string   "sample_number"
    t.string   "text_paper"
    t.string   "text_paper_layer_2"
    t.string   "text_paper_layer_3"
    t.string   "text_paper_layer_4"
    t.string   "font_color"
    t.string   "ribbon_color"
    t.text     "special_requests"
    t.text     "card_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

  create_table "wedding_samples", :force => true do |t|
    t.string   "name"
    t.string   "mailing_address"
    t.string   "mailing_address_2"
    t.string   "phone_number"
    t.string   "email_address"
    t.date     "event_date"
    t.string   "sample_name_1"
    t.string   "sample_name_2"
    t.string   "sample_name_3"
    t.string   "text_paper"
    t.string   "text_paper_layer_1"
    t.string   "text_paper_layer_2"
    t.string   "text_paper_layer_3"
    t.string   "text_paper_2"
    t.string   "text_paper_2_layer_1"
    t.string   "text_paper_2_layer_2"
    t.string   "text_paper_2_layer_3"
    t.string   "text_paper_3"
    t.string   "text_paper_3_layer_1"
    t.string   "text_paper_3_layer_2"
    t.string   "text_paper_3_layer_3"
    t.string   "font_color_1"
    t.string   "font_color_2"
    t.string   "font_color_3"
    t.string   "ribbon_color_1"
    t.string   "ribbon_color_2"
    t.string   "ribbon_color_3"
    t.string   "reply_card_style"
    t.string   "paper_sample_color_1"
    t.string   "paper_sample_color_2"
    t.string   "paper_sample_color_3"
    t.string   "paper_sample_color_4"
    t.text     "special_requests"
    t.integer  "invites_quantity",                 :limit => 11
    t.integer  "invites_quantity_cost",            :limit => 11
    t.integer  "save_the_date_quantity",           :limit => 11
    t.integer  "save_the_date_quantity_cost",      :limit => 11
    t.integer  "thank_you_cards_quantity",         :limit => 11
    t.integer  "thank_you_cards_quantity_cost",    :limit => 11
    t.integer  "programs_quantity",                :limit => 11
    t.integer  "programs_quantity_cost",           :limit => 11
    t.integer  "paper_samples_quantity",           :limit => 11
    t.integer  "paper_samples_quantity_cost",      :limit => 11
    t.integer  "paper_swatch_deck_quantity",       :limit => 11
    t.integer  "paper_swatch_deck_quantity_cost",  :limit => 11
    t.integer  "ribbon_swatch_deck_quantity",      :limit => 11
    t.integer  "ribbon_swatch_deck_quantity_cost", :limit => 11
    t.integer  "subtotal",                         :limit => 11
    t.integer  "gst",                              :limit => 11
    t.integer  "total",                            :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
