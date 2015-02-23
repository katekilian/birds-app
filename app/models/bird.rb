class Bird < ActiveRecord::Base

  validates :name, presence: true
  validates :color, presence: true
  validates :wingspan, presence: true

end
