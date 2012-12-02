class Meal < ActiveRecord::Base

  attr_accessible :category, :description, :photo, :price, :title

  validates :category, :presence => true
  validates :description, :presence => true
  validates :photo, :presence => true
  validates :price, :presence => true, :numericality => true
  validates :user_id, :presence => true, :numericality => true
  validates :review_id, :presence => true, :numericality => true

  
  belongs_to :user

  has_many :reviews
end

#
# create_table :meals do |t|
#    t.string :category
#    t.string :description
#    t.string :photo
#    t.float :price
#    t.integer :user_id
#    t.integer :review_id
#
#    t.timestamps

####Add title separate from description? Title sufficient for standard items not requiring description, can add description if need to give ingredients, etc.
####
