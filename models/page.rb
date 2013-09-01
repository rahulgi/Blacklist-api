class Page < ActiveRecord::Base
  validates :base_url, presence: true
end
