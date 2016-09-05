class List < ApplicationRecord
  belongs_to :board, optional: true
  has_many :tasks
  accepts_nested_attributes_for :tasks
end
