class Relation < ApplicationRecord
  has_many :attrs
  has_many :tuples
end
