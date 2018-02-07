class Page < ApplicationRecord
  belongs_to :site
  validates :url, presence: true
  has_many :person_page_rank
end
