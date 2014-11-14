class FixTransmissionService < ActiveRecord::Migration
  def change

    add_column :vehicle_inspection_reports, :transmission_service_comments, :string



    remove_column :vehicle_inspection_reports, :transmission_comments

  end
end
