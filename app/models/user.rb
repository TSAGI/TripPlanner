class User < ApplicationRecord
  attr_writer :login

  def login
    @login || self.username || self.email
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:login]
    has_many :trips
    has_many :reviews
    has_one :meal_preference

    #include Gravtastic
    #gravtastic :email

end
