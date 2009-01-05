module NavHelper
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
    top_nav = "nav/top" 
    if @category && @category.category_type == "custom" or %w(custom).include?(current_page)
      top_nav = "nav/custom"
    end
    top_nav
        
  end
end