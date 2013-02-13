class Device < ActiveRecord::Base
  attr_accessible :comment, :commissioning, :decommissioning,
                  :device_model, :device_type, :source, :task
  belongs_to :department
end
