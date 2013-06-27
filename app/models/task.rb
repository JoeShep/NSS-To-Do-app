class Task < ActiveRecord::Base
  attr_accessible :title
  has_and_belongs_to_many :lists
  scope :done, where(:done => true)
  scope :not_done, where(:done => false)
end
