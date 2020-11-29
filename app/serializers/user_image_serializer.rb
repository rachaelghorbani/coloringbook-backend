class UserImageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :image_id, :fill_colors, :image_component, :image_title

  def image_component
    object.image.component
  end

  def image_title
    object.image.title
  end
#   need to add image here so that we can get the component when its time to color the page
end
