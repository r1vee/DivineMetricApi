class Page < ApplicationRecord
  belongs_to :site
  has_many :person_page_rank
end
