class Station < ActiveRecord::Base
  attr_accessible :name

  has_many :computers, :dependent => :destroy
  has_many :devices, :dependent => :destroy
  has_many :modems, :dependent => :destroy
  has_many :printers, :dependent => :destroy
  validates :name, :presence => :true

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
