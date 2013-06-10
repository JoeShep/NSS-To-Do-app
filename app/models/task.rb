class Task < ActiveRecord::Base
  attr_accessible :title
  belongs_to :list
  scope :done, where(:done => true)
  scope :not_done, where(:done => false)
end
