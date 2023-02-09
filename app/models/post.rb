class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
  validate :title_not_to 

  def title_not_to
    if title === "True Facts"
    errors.add(:title, "True Facts")
    end
  end

end
