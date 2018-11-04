class Attribute < ApplicationRecord
  belongs_to :relation
  has_many :values
end
