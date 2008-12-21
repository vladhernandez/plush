module ImagesHelper
  def linked_lightbox_image(image)
    link_to(image_tag(image.file.url('thumb')), image.file.url('full'), :class => 'lightwindow')
  end
  
  def default_product_image(product)
    link_to image_tag(product.images.large.first.file.url), product.images.xlarge.first.file.url, :class => 'lightbox' unless product.images.large.empty?
  end
end
