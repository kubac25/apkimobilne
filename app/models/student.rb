class Student < ApplicationRecord
  has_and_belongs_to_many :courses
  has_many :topics
  has_many :posts

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  validates :index, presence: true, length: { minimum: 6, maximum: 6 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
