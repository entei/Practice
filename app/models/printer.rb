class Printer < ActiveRecord::Base
  attr_accessible :chroma, :comment, :commissioning,
                  :decommissioning, :device, :page_format,
                  :printer_model, :printer_type, :source, :task, :station_id
  belongs_to :station

  def retirement?
    self.decommissioning  < Date.today
  end
end