module ImagesHelper
  def linked_lightbox_image(image)
    link_to(image_tag(image.file.url('thumb')), image.file.url('full'), :class => 'lightwindow')
  end
end
