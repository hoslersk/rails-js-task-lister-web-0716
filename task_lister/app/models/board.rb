class Board < ApplicationRecord
  has_many :lists
  has_many :tasks, through: :lists
  accepts_nested_attributes_for :lists
end
