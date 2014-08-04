# == Schema Information
#
# Table name: mileages
#
#  id         :integer          not null, primary key
#  miles      :integer
#  vehicle_id :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Mileage < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :user
end
