class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :movies
  has_many :reviews, dependent: :destroy # when a user deletes their account, their reviews associated with that need to be also deleted
end
