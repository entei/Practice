class Printer < ActiveRecord::Base
  attr_accessible :chroma, :comment, :commissioning,
                  :decommissioning, :device, :page_format,
                  :printer_model, :printer_type, :source, :task
  belongs_to :department
end
