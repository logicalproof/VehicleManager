class Checklist < ActiveRecord::Base
  belongs_to :checked_item_type
  serialize :properties, Hash
end
