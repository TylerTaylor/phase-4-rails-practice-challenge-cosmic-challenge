class Mission < ApplicationRecord
  belongs_to :planet
  belongs_to :scientist

  # must have a name, a scientist and a planet
  validates :name, presence: true
  validates :scientist, presence: true
  validates :planet, presence: true

  # a scientist cannot join the same mission twice

  # UPDATE - this was the issue all along
  # shoutout Ashton for being right about that lol
  validates :scientist, uniqueness: { scope: :name }
end
