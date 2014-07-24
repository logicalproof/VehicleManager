# == Schema Information
#
# Table name: vehicle_assignments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  vehicle_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class VehicleAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehicle

  validates :vehicle_id, presence: true, uniqueness: true
  validates :user_id, presence: true
end
