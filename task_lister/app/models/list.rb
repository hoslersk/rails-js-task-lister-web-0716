class List < ApplicationRecord
  belongs_to :Board
  has_many :tasks
end
