class Computer < ActiveRecord::Base
  attr_accessible :serial, :status, :title
  validates :title, :serial, presence:true
  validates :serial, uniqueness:true
 # validates :serial, length:
end
