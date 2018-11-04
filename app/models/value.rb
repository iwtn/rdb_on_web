class Value < ApplicationRecord
  belongs_to :attribute
  belongs_to :tuple
end
