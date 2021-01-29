class Booking < ApplicationRecord
  belongs_to :meeting, optional: true
  validates :name, :date, :time, :email, :message, presence: true
end
