# == Schema Information
#
# Table name: vehicle_service_records
#
#  id                           :integer          not null, primary key
#  oil_change_mileage           :integer
#  brake_service_mileage        :integer
#  transmission_service_mileage :integer
#  oil_filter_mileage           :integer
#  air_filter_mileage           :integer
#  battery_mileage              :integer
#  tires_rotated_mileage        :integer
#  oil_change                   :date
#  brake_service                :date
#  transmission_service         :date
#  oil_filter                   :date
#  air_filter                   :date
#  battery                      :date
#  tires_rotated                :date
#  last_inspection_date         :date
#  vehicle_id                   :integer
#  created_at                   :datetime
#  updated_at                   :datetime
#

class VehicleServiceRecord < ActiveRecord::Base
  belongs_to :vehicle
  has_many :vehicle_inspection_reports


  def check_for_inspection_data
    report = self.vehicle_inspection_reports.last
    [:oil_change, :transmission_service, :brake_service].each do |check|
      p report[check]
      if report[check] == true
        if self.method(check).call != nil
          p report.created_at
          if self.method("#{check.to_s}".to_sym).call < report.created_at
            p self.method("#{check.to_s}_mileage".to_sym).call
            self.method("#{check.to_s}_mileage=".to_sym).call report.mileage
            p self.method("#{check.to_s}_mileage".to_sym).call
            self.method("#{check.to_s}=".to_sym).call report.created_at
          end
        else
          p report.created_at
          p self.method("#{check.to_s}_mileage".to_sym).call
          self.method("#{check.to_s}_mileage=".to_sym).call report.mileage
          p self.method("#{check.to_s}_mileage".to_sym).call
          self.method("#{check.to_s}=".to_sym).call report.created_at
        end
      end
    end
    self.save
  end
end

