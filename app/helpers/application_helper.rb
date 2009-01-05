# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  
  def logo_link
    link_to('<span>Plush</span>', '/', :id => 'logo')
  end
  

  
  def page_class_name
    content_class=""
    current_page = params[:controller]
    
    shaded = %w( categories products store custom ).include?(current_page)
    landing = %w(store custom).include?(current_page)

    content_class << ' shaded ' if shaded
    content_class << ' landing ' if landing
    content_class << orders_class
    content_class
  end
  
  def orders_class
    css_class = ''
    css_class = ' orders ' if %w( favour_tag_labels save_dates invites occasions programs thank_yous wedding_samples other_samples ).include? params[:controller]
    css_class
  end
  
  
  
end
