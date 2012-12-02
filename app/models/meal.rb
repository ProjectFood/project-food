class Meal < ActiveRecord::Base 
  attr_accessible :category, :description, :photo, :price, :title, :portion
  validates_presence_of :category, :description, :photo, :price, :user_id
  validates :portion, numericality: true
  validates :category, :inclusion => { :in => %w(Breakfast Entree Dessert) }
  validate :correct_price?
  belongs_to :user

  def correct_price? #validation for 2 decimals in price max?
    if self.price !=~ /\${,1}\d{1,}.\d{1,2}/
      errors.add(:price, "must be in the form $0.00")
    end
  end
end