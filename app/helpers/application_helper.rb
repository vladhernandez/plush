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
  
  def accordion_nav_for(object)
    object = object.first if object.is_a? Array
    if object && object.children
      links = '<dl class="accordion_holder">'
      object.children.each do |item|
        links << "<dt id='#{item.permalink if item.permalink}' class='accordion_toggle'>"
        links << content_tag('span',item.title)
        links << "</dt>"
        links << accordion_nav_contents(item) if item.children
      end
        links << "</dl>"
    end
    links
  end
  
  def accordion_nav_contents(object)
    object = object.first if object.is_a? Array
    if object && object.children
      links = '<dd class="accordion_content">'
      object.children.each do |item|
        links << "<span id='#{item.permalink if item.permalink}'>"
        links << link_to(item.title, item)
        links << "</span>"
      end
      links << "</dd>"
    end
    links
end  
  
  def nav_active_class(item)
    'active' if @category == item
  end
  
  def top_nav
    current_page = request.request_uri[1..-1]
    top_nav = "nav/custom"
    unless current_page == "custom"
      top_nav = "nav/top"
    end
    top_nav
        
  end
  
  def page_class_name
    content_class=""
    current_page = request.request_uri[1..-1]
    
    shaded = %w(categories products).include?(current_page)
    landing = shaded = %w(store custom).include?(current_page)

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
