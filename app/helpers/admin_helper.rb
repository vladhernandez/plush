module AdminHelper
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
end
