class Apartment < ApplicationRecord
  validates :name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, reject_if: lambda {|attributes| attributes['route'].blank? and attributes['outgoings'].blank? and attributes['by_walk'].blank?}, allow_destroy: true
end
