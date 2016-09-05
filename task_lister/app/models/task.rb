class Task < ApplicationRecord
  belongs_to :list, optional: true
  belongs_to :board, optional: true
  accepts_nested_attributes_for :list
end
