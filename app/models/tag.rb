class Tag < ActiveRecord::Base
  has_many :questions, through: :tag_questions

  validates :name, uniqueness: true, presence: true
end
