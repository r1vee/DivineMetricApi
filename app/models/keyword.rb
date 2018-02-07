class Keyword < ApplicationRecord
  belongs_to :person
  validates :name, presence: true
end
