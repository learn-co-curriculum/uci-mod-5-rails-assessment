class Pet < ApplicationRecord
  belongs_to :owner
  validates :name, uniqueness: { case_sensitive: false }
end
