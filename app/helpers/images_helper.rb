module ImagesHelper
  def linked_lightbox_image(image)
    link_to(image_tag(image.file.url('thumb')), image.file.url('full'), :class => 'lightwindow')
  end
  
  def default_product_image(product)
      large = product.images.large.first.file.url
      xlarge = product.images.xlarge.first.file.url
      if large and xlarge
       linked_image = link_to image_tag(large), xlarge, :class => 'lightbox' 
      end
  end
end
