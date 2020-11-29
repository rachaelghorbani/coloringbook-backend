class User < ApplicationRecord
    has_secure_password

    has_many :user_images
    has_many :images, through: :user_images
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, :password, :first_name, :last_name, presence: true
end
