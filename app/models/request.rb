class Request < ApplicationRecord
  belongs_to :user

  validates :title,:user_id, presence: true
end
