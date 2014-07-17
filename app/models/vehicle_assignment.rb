class VehicleAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehicle

  validates :vehicle_id, presence: true, uniqueness: true
  validates :user_id, presence: true
end
