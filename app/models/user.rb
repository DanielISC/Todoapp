class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_attached_file :avatar, styles: { medium: "300x300", thumb: "100x100" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :todo_lists
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :authentication_keys => [:username]
end
