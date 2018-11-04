class Tuple < ApplicationRecord
  belongs_to :relation
  has_many :values
end
