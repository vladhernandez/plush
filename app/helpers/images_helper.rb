module ImagesHelper
  def linked_lightbox_image(image)
    link_to(image_tag(image.file.url('thumb')), image.file.url('full'), :class => 'lightwindow')
  end
  
  def default_product_image(product)
      large = product.images.large.first.file.url unless product.images.large.empty?
      xlarge = product.images.xlarge.first.file.url unless product.images.xlarge.empty?
      if large and xlarge
        link_to image_tag(large), xlarge, :class => 'lightbox'
      end
  end
end
