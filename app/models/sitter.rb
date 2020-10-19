class Sitter < ApplicationRecord
  has_many :jobs
  has_many :Parent, through: :jobs


end
