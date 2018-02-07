class Site < ApplicationRecord
  validates :name, presence: true
  has_many :pages
end
