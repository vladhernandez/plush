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

ActiveRecord::Schema.define(:version => 20081213001215) do

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
  end

  create_table "invites", :force => true do |t|
    t.string   "name"
    t.integer  "collection_id", :limit => 11
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occasion_order_forms", :force => true do |t|
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

  create_table "other_sample_orders", :force => true do |t|
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
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.text     "content"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.integer  "category_id", :limit => 11
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  create_table "program_order_forms", :force => true do |t|
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

  create_table "thank_you_order_forms", :force => true do |t|
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

  create_table "wedding_sample_orders", :force => true do |t|
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
