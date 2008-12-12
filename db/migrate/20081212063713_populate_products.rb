class PopulateProducts < ActiveRecord::Migration
  def self.up
    Product.destroy_all
    
    cat = Category.find_by_title('Classic')
    12.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    cat = Category.find_by_title('Couture')
    6.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    cat = Category.find_by_title('Destination')
    5.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    cat = Category.find_by_title('Modern')
    7.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    
    
    cat = Category.find_by_title('Programs')
    5.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    cat = Category.find_by_title('Favour Tags & Labels')
    5.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    cat = Category.find_by_title('Seating Arrangements')
    1.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    cat = Category.find_by_title('Accessories')
    2.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    
    cat = Category.find_by_title('Shower Invitations')
    5.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    
    cat = Category.find_by_title('Baby Announcements & Thank Yous')
    8.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    
    cat = Category.find_by_title('Grad Announcements & Thank Yous')
    5.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    
    cat = Category.find_by_title('Holiday Cards & Invitations')
    5.times do |i|
      Product.create(:title => "#{cat.title} Product #{i}", :category_id => cat.id)
    end
    
  end

  def self.down
        Product.destroy_all
  end
end
