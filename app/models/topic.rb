class Topic < ApplicationRecord
  validates :title, presence: true, length: { minimum: 15, maximum: 150 }
  validates :content, presence: true, length: { minimum: 20, maximum: 2000 }
  belongs_to :user
  has_many :comments, dependent: :destroy
  default_scope -> { order(updated_at: :desc, created_at: :desc) }
end
