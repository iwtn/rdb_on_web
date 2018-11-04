class Relation < ApplicationRecord
  has_many :attributes
  has_many :tuples
end
