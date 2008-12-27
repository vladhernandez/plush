class MoveOrdersToNameSpace < ActiveRecord::Migration
  def self.up
    rename_table :favour_tag_label_orders, :favour_tag_labels
    drop_table :invites
    rename_table :invite_orders, :invites
    rename_table :occasion_order_forms, :occasions
    rename_table :other_sample_orders, :other_samples
    rename_table :program_order_forms, :programs
    rename_table :save_date_orders, :save_dates
    rename_table :thank_you_order_forms, :thank_yous
    rename_table :wedding_sample_orders, :wedding_samples
  end

  def self.down
    rename_table :favour_tag_labels, :favour_tag_label_orders
    
    rename_table :invites, :invite_orders
        
    create_table "invites", :force => true do |t|
      t.string   "name"
      t.integer  "collection_id", :limit => 11
      t.text     "description"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    rename_table :occasions, :occasion_order_forms
    rename_table :other_samples, :other_sample_orders
    rename_table :programs, :program_order_forms
    rename_table :save_dates, :save_date_orders
    rename_table :thank_yous, :thank_you_order_forms
    rename_table :wedding_samples, :wedding_sample_orders
  end
end
