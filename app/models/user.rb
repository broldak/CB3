class User < ApplicationRecord
  has_many :briefs
  validates :email, presence: true
end
