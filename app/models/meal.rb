class Meal < ActiveRecord::Base 
  attr_accessible :category, :description, :photo, :price, :title, :portion
  validates_presence_of :title, :description, :price, :category, :portion, :category, :photo, :user_id
  validates :portion, numericality: true
  validates :category, :inclusion => { :in => %w(Breakfast Entree Dessert) }
  validates :price, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:greater_than => 0 }
  belongs_to :user

end

