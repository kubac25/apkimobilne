class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  belongs_to :student
  belongs_to :course
	   has_many :posts
end
