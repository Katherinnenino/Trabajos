class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        has_many :jobs
        has_many :postulations
        has_many :images
        accepts_nested_attributes_for :images

end
