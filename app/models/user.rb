class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # for confirmable you have to configure the send email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :payment
  # when sign up i will create user and payment table so i need the payment attributes too
  accepts_nested_attributes_for :payment
  has_many :images
end
