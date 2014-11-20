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
  
  SERVICES = [:oil_change, :transmission_service, :brake_service, :tires_rotated, :oil_filter, :air_filter, :battery]

  def check_for_inspection_data(report)
    SERVICES.each do |check|
      puts check.to_s + ": " + "#{report[check]}"
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

  def service_parameters(type)
    case type
    when :oil_change
      return {:interval => 3, :mileage => 3000}
    when :oil_filter
      return {:interval => 12, :mileage => 6000}
    when :transmission_service
      return {:interval => 12, :mileage => 25000}
    when :air_filter
      return {:interval => 12, :mileage => 12000}
    when :brake_service
      return {:interval => 12, :mileage => 12000}
    when :battery
      return {:interval => 24, :mileage => 36000}
    when :tires_rotated
      return {:interval => 6, :mileage => 6000}
    else
      puts "You just making it up!"
    end
  end

  def check_for_upcoming_service
    upcoming_service = {}
    SERVICES.each do |check|
      if self.method("#{check.to_s}_mileage".to_sym).call
        mileage = self.method("#{check.to_s}_mileage".to_sym).call + service_parameters(check)[:mileage]
        date = (self.method(check).call + service_parameters(check)[:interval].months)
      else
        mileage = 0 + service_parameters(check)[:mileage]
        date = self.created_at
      end
      puts "Vehicle #{vehicle.number} #{check.to_s } due mileage: #{mileage}, Current Mileage: #{vehicle.current_mileage}"
      if vehicle.current_mileage > mileage
         upcoming_service[check] = {:due_mileage => mileage, :due_date => date, :vehicle => vehicle}
      end
    end
    puts "Vehicle #{vehicle.number} current mileage: #{vehicle.current_mileage}"
    return upcoming_service

  end

  def service_stats
    stats = {}
    SERVICES.each do |check|
      if self.method("#{check.to_s}_mileage".to_sym).call
        mileage = self.method("#{check.to_s}_mileage".to_sym).call + service_parameters(check)[:mileage]
        date = self.method(check).call + service_parameters(check)[:interval].months
      else
        mileage = 0 + service_parameters(check)[:mileage]
        date = self.created_at.strftime("%B %d, %Y")
      end
      stats[check] = {:due_mileage => mileage, :due_date => date}
    end
    return stats
  end


end

