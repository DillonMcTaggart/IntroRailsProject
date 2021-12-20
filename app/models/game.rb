class Game < ApplicationRecord
  belongs_to :publisher
  validates :title, :year, :rank, :genre, presence: true
  validates :title, uniqueness: true
  validates :year, :rank, numericality: {only_integer:true}
  validates :sales, numericality: true
end
