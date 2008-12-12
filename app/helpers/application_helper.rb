# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def edit_list_for(items)
    links = '<div class="scrollable">'
    links << '<ul class="admin-list">'
    items.each do |item|
      links << "<li>"
      links << link_to(item.title, item)
      links << " - #{link_to 'Edit', eval("edit_#{item.class.name.underscore}_path(item)")}"
      links << "</li>"
    end
    links << '</ul>'
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
  
  def nav_list_for(object)
    object = object.first if object.is_a? Array
    if object && object.children
      links = ''
      links << "<ul class='#{object.class.name.downcase}-nav'>"
      object.children.each do |item|
        links << "<li id='#{item.permalink if item.permalink}' class='#{nav_active_class item}'>"
        links << link_to(item.title, item)
        links << nav_list_for(item) if item.children
        links << "</li>"
      end
      links << '</ul>'
    end
    links
  end
  
  def nav_active_class(item)
    'active' if @category == item
  end
  
  
  
end
