class Modem < ActiveRecord::Base
  attr_accessible :comment, :commissioning, :decommissioning,
                  :model, :modem_type, :source, :speed, :task , :station_id
  belongs_to :station

  validates :model, presence:true

end
