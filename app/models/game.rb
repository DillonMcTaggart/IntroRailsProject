class Game < ApplicationRecord
  belongs_to :publisher
  validates :title, :year, :rank, :genre, :sales, presence: true
  validates :year, :rank, numericality: { only_integer: true }
  validates :sales, numericality: true
end
