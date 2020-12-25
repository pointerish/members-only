class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { minimum: 3 }
end
