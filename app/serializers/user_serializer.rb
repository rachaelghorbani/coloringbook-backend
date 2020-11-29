class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :user_images

  def user_images
    object.user_images.map do |f|
        {id: f.id, image_id: f.image_id, user_id: f.user_id, fill_colors: f.fill_colors, image_component: f.image.component, image_title: f.image.title }
    end
  end
end
