# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def edit_list_for(items)
    links = '<div class="scrollable">'
    items.each do |item|
      links << link_to(item.title, item)
      links << " - #{link_to 'Edit', edit_item_path(item)}"
    end
    links << '</div>'
    # links << new_link_for(items.first.class.name)
    links
  end
  
  def new_link_for(klass)
    klass_name = klass.to_s.capitalize
    link_to "Create New #{klass_name}", eval("new_#{klass_name.downcase.underscore}_path")
  end
  
  def logo_link
    link_to(image_tag('/images/logo.gif'), '/', :id => 'logo')
  end
  
end
