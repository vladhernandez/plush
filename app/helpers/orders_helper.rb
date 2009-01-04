module OrdersHelper
  def request_sample_link_for(product)
    # url_for eval("new_#{product.class.name_url}")
    button_to_image "Request a Sample", new_wedding_sample_path, :class => :sample, :src => '/images/store/request_sample.gif', :type => 'button'
  end
  
  def place_order_link_for(product)
    # url_for eval("new_#{product.class.name_url}")
    button_to_image "Order Form", new_wedding_sample_path, :class => :order, :src => '/images/store/order_form.gif', :type => 'button'
  end
  
  
  def button_to_image(name, options = {}, html_options = {})
    # File actionpack/lib/action_view/helpers/url_helper.rb, line 286
    html_options = html_options.stringify_keys
    convert_boolean_attributes!(html_options, %w( disabled ))

    method_tag = ''
    if (method = html_options.delete('method')) && %w{put delete}.include?(method.to_s)
      method_tag = tag('input', :type => 'hidden', :name => '_method', :value => method.to_s)
    end

    form_method = method.to_s == 'get' ? 'get' : 'post'

    request_token_tag = ''
    if form_method == 'post' && protect_against_forgery?
      request_token_tag = tag(:input, :type => "hidden", :name => request_forgery_protection_token.to_s, :value => form_authenticity_token)
    end

    if confirm = html_options.delete("confirm")
      html_options["onclick"] = "return #{confirm_javascript_function(confirm)};"
    end

    url = options.is_a?(String) ? options : self.url_for(options)
    name ||= url

    # html_options.merge!("type" => "submit", "value" => name)
    html_options.merge!("type" => "submit", "value" => name || url) 
    html_options["type"] = "image" if html_options.include?("src")

    "<form method=\"#{form_method}\" action=\"#{escape_once url}\" class=\"button-to\"><div>" +
      method_tag + tag("input", html_options) + request_token_tag + "</div></form>"
  end
  
end
