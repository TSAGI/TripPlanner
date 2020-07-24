class User < ApplicationRecord
    has_many :trips, :reviews
    has_one :meal_preference
end
