class PopulateCategories < ActiveRecord::Migration
  def self.up
      Category.destroy_all
      root = Category.create(:title => 'Root')
      store = Category.create(:title => 'Store', :category_type => 'store', :parent_id => root.id)
      wic = Category.create(:title => "Wedding Invitation Collection", :parent_id => store.id) 
        Category.create(:title => "Classic", :parent_id => wic.id) 
        Category.create(:title => "Couture", :parent_id => wic.id) 
        Category.create(:title => "Destination", :parent_id => wic.id) 
        Category.create(:title => "Modern", :parent_id => wic.id) 

      ws = Category.create(:title => "Wedding Stationary", :parent_id => store.id) 
        Category.create(:title => "Programs", :parent_id => ws.id) 
        Category.create(:title => "Favour Tags & Labels", :parent_id => ws.id) 
        Category.create(:title => "Seating Arrangements", :parent_id => ws.id) 
        Category.create(:title => "Accessories", :parent_id => ws.id) 
        Category.create(:title => "Thank You Cards", :parent_id => ws.id) 

      oso = Category.create(:title => "Other Special Occasions", :parent_id => store.id) 
        Category.create(:title => "Shower Invitations", :parent_id => oso.id) 
        Category.create(:title => "Baby Announcements & Thank Yous", :parent_id => oso.id) 
        Category.create(:title => "Grad Announcements & Thank Yous", :parent_id => oso.id) 
        Category.create(:title => "Holiday Cards & Invitations", :parent_id => oso.id) 
        
      custom = Category.create(:title => 'Custom Invitations', :category_type => 'custom', :parent_id => root.id)
      port = Category.create(:title => "Portfolio", :parent_id => custom.id) 
        Category.create(:title => "Weddings", :parent_id => port.id) 
        Category.create(:title => "Corporate", :parent_id => port.id) 
        Category.create(:title => "Social", :parent_id => port.id)  
      
  end

  def self.down
    Category.destroy_all
  end
end