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

ActiveRecord::Schema.define(:version => 20081207175251) do

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

end
