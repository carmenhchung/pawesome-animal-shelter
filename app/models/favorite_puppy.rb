#  For our favorite puppy
class FavoritePuppy < ApplicationRecord
  belongs_to :user
  belongs_to :puppy
end
