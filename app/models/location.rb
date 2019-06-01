class Location < ApplicationRecord
  belongs_to :trips
  has_many :addresses
end
