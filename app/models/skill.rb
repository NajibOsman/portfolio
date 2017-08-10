class Skill < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many(:projects)
end
