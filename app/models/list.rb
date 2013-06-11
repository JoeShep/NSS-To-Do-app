class List < ActiveRecord::Base
  attr_accessible :name, :description
  has_and_belongs_to_many :tasks
  validates :name, :presence => true
end
