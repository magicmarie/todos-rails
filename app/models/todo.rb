class Todo < ApplicationRecord
  has_many :item, dependent: :destroy

  validates_presence_of :title, :created_by
end
