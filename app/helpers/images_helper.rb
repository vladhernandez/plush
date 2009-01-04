module ImagesHelper
  def linked_lightbox_image(image)
    link_to(image_tag(image.file.url('thumb')), image.file.url('full'), :class => 'lightwindow')
  end
  
  def default_product_image(product)
      xlarge = product.images.large.first.file.url
      large = product.images.xlarge.first.file.url
      unless large.empty? or xlarge.empty?
       linked_image = link_to image_tag(large), xlarge, :class => 'lightbox' 
      end
      linked_image
  end
end
