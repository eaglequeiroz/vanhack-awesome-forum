class Topic < ApplicationRecord
  validates :title, presence: true, length: { minimum: 10, maximum: 150 }, uniqueness: { case_sensitive: false }
  validates :content, presence: true, length: { minimum: 20 }
  belongs_to :user
  has_many :comments, dependent: :destroy
  default_scope -> { order(updated_at: :desc, created_at: :desc) }

  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where("lower(title) LIKE lower(?)", "%#{search}%")
  end
end
