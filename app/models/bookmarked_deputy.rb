class BookmarkedDeputy < ApplicationRecord
  belongs_to :deputy
  belongs_to :user
end
