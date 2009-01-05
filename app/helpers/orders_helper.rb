module OrdersHelper
  def request_sample_link_for(product)
    # link = determine_link_for(product, :sample)
    link = new_invite_path
    button_to_image "Request a Sample", link, :class => :sample, :src => '/images/store/request_sample.gif', :type => 'button', :method => 'get'
  end
  
  def place_order_link_for(product)
    # link = determine_link_for(product, :order)
    link = new_invite_path
    button_to_image "Order Form", link, :class => :order, :src => '/images/store/order_form.gif', :type => 'button', :method => 'get'
  end
  
  def determine_link_for(product, type)
    case product.category.parent.permalink.include?
    when 'invitation'
      url = new_invite_path
    when 'occasion'
      url = new_occasion_path
    when 'stationary'
      case product.category.permalink.include?
      when 'programs'
        url = new_product_path
      when 'favour'
        url = new_favour_tag_label_path
      when 'thank'
        url = new_thank_you_path
      end
    end
    url
  end
  
  
  def orders_submit_button
    submit_tag "Create", :src => '/images/layout/submit.png', :type => 'image'
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
