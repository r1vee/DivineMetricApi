class Person < ApplicationRecord
  validates :name, presence: true
  has_many :person_page_rank
  has_many :keywords
end
