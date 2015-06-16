class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :rating, inclusion: { in: 0..100 }, numericality: { only_integer: true }

  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
end
