class Meeting < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :title, :time_meeting, :start_date, :end_date, :start_time, :end_time, :user_id, presence: true
end
