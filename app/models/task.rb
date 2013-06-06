class Task < ActiveRecord::Base
  attr_accessible :title
  belongs_to :list
end
