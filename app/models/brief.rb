class Brief < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
end
