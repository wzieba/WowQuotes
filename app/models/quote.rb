class Quote < ApplicationRecord

  validates :text, presence: true, uniqueness: true

end
