class Computer < ActiveRecord::Base
  attr_accessible :comment, :commissioning, :comp_class,
                  :comp_type, :computer_model, :decommissioning,
                  :display, :hdd, :memory, :platform, :processor, :source, :task
end
