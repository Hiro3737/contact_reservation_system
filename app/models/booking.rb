class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  belongs_to :point
end
