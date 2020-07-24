class Destination < ApplicationRecord
    has_many :eateries, :lodgings, :attractions
end
