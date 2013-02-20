class Device < ActiveRecord::Base
  attr_accessible :comment, :commissioning, :decommissioning,
                  :device_model, :device_type, :source, :task , :station_id
  belongs_to :station


  def retirement?
           self.decommissioning  < Date.today
  end

end
